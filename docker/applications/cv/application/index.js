'use strict';
var cp = require('child_process');
var app = require('express')();
var fs = require('fs');
var xml2js = require('xml2js');
var mustache = require('mustache');
var Docxtemplater = require('docxtemplater');
var angularExpressions = require('angular-expressions');

var JSON_CV_PATH = __dirname + '/CV.json';

var cvFile = fs.readFileSync(JSON_CV_PATH, 'UTF-8');
var cv = JSON.parse(cvFile);

app.set('views', './templates');
app.set('view engine', 'jade');

var xmlCV = generateXmlCV(cv);

cv = prepareCV(cv);

var docXFilePath = generateDocXCV(cv);
var pdfPath = generatedPdfCV(cv);

app.get('/', function renderCV(req, res) {
  res.render('index', {cv: cv});
});

app.get('/json', function sendJSON(req, res) {
  res.sendFile(JSON_CV_PATH);
});

app.get('/xml', function sendJSON(req, res) {
  res.send(xmlCV);
});

app.get('/docx', function sendJSON(req, res) {
  res.sendFile(docXFilePath);
});

app.get('/pdf', function sendJSON(req, res) {
  res.sendFile(pdfPath);
});

app.listen(8080);

function generatedPdfCV(cv) {
  var content = fs.readFileSync(__dirname + '/templates/cv.template.tex', 'UTF-8');
  var output = mustache.render(content, cv);
  var outputPath = __dirname + '/cv.tex';
  fs.writeFileSync(outputPath, output);
  var pdfPath = __dirname + '/cv.pdf';
  console.log(pdfPath);
  var pdflatex = cp.spawn('pdflatex', [outputPath]);
  pdflatex.on('exit', function onExit(code) {
    console.log('PDFLatex - Exit with code: ' + code);
  });
  return pdfPath;
}

function generateDocXCV(cv) {
  var docxContent = fs.readFileSync(__dirname + '/templates/cv.template.docx', 'binary');
  var angularParser = function angularParser(tag) {
    var expr = angularExpressions.compile(tag);
    return {get: expr};
  };

  var doc = new Docxtemplater(docxContent);
  doc.setOptions({parser: angularParser});
  doc.setData(cv);
  doc.render();

  var buf = doc.getZip().generate({type: 'nodebuffer'});
  var outputName = __dirname + '/cv.docx';
  fs.writeFileSync(outputName, buf);
  console.log(outputName);
  return outputName;
}

function generateXmlCV(cv) {
  var builder = new xml2js.Builder({
    rootName: 'CV',
  });
  return builder.buildObject(cv);
}

function getDisplayableTechList(techTable) {
  var techDisplay = '';
  for (var index in techTable) {
    techDisplay += techTable[index];
    if (index < techTable.length - 1) {
      techDisplay += ', ';
    }
  }
  return techDisplay;
}

function prepareCV(cv) {
  for (var expIndex in cv.experiences) {
    var experience = cv.experiences[expIndex];

    var endDate = undefined === experience.endDate ? ' - Now' : ' - ' + experience.endDate;
    experience.display = {};
    experience.display.date = experience.startDate + endDate;

    experience.display.technologies = getDisplayableTechList(experience.technologies);
  }

  for (var projectIndex in cv.projects) {
    var project = cv.projects[projectIndex];

    project.display = {};
    project.display.technologies = getDisplayableTechList(project.technologies);
  }

  for (var index in cv.skills) {
    var skillCategory = cv.skills[index];

    skillCategory.display = {};
    skillCategory.display.skills = getDisplayableTechList(skillCategory.skill);
  }

  for (var trainingIndex in cv.trainings) {
    var training = cv.trainings[trainingIndex];
    if (undefined === training.mention) {
      training.mention = '';
    }
  }

  for (var langIndex in cv.languages) {
    var language = cv.languages[langIndex];
    if (undefined === language.level.general.description) {
      language.level.general.description = '';
    }
  }

  return cv;
}
