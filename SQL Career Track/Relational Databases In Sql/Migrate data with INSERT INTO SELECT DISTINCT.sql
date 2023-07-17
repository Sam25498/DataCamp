--Insert all DISTINCT professors from university_professors into professors.
Print all the rows in professors.
-- Insert unique professors into the new table
INSERT INTO professors 
SELECT DISTINCT firstname, lastname, university_shortname 
FROM university_professors;

-- Doublecheck the contents of professors
SELECT * 
FROM professors;
-------------------------------------------------
--query result
firstname	lastname	university_shortname
Michel	Rappaz	EPF
Hilal	Lashuel	EPF
Jeffrey	Huang	EPF
Pierre	Magistretti	EPF
Paolo	Ienne	EPF


--Insert all DISTINCT affiliations into affiliations from university_professors.
-- Insert unique affiliations into the new table
INSERT INTO affiliations 
SELECT DISTINCT firstname, lastname, function, organization 
FROM university_professors;

-- Doublecheck the contents of affiliations
SELECT * 
FROM affiliations;
----------------------------------------------
--query result
firstname	lastname	function	organization
Dimos	Poulikakos	VR-Mandat	Scrona AG
Francesco	Stellacci	Co-editor in Chief, Nanoscale	Royal Chemistry Society, UK
Alexander	Fust	Fachexperte und Coach für Designer Startups	Creative Hub
Jürgen	Brugger	Proposal reviewing HEPIA	HES Campus Biotech, Genève
Hervé	Bourlard	Director	Idiap Research Institute
Ioannis	Papadopoulos	Mandat	Schweizerischer Nationalfonds (SNF)
Olaf	Blanke	Professeur à 20%	Université de Genève
...
Patrick	Aebischer	Founder & Chairman of the BOD 	Amazentis
Andrea	Rinaldo	Secretary, Class of Sciences	Istituto Veneto di Scienze, Lettere e Arti (IT)
Andreas	Mortensen	Membre, Wissenschaftlicher Beirat	Leibniz Institute INM, Saarbrücken, Allemagne
Bruno	Moretti	NA	Stiftung Kinderbetreuung im Hochschulraum Bern KIHOB
Showing 100 out of 1377 rows
