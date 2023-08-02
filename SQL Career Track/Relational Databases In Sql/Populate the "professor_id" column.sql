--First, have a look at the current state of affiliations by fetching 10 rows and all columns.

-- Have a look at the 10 first rows of affiliations
SELECT * 
FROM affiliations
LIMIT 10;

--Update the professor_id column with the corresponding value of the id column in professors.
--"Corresponding" means rows in professors where the firstname and lastname are identical to the ones in affiliations.
-- Set professor_id to professors.id where firstname, lastname correspond to rows in professors
UPDATE affiliations
SET professor_id = professors.id
FROM professors
WHERE affiliations.firstname = professors.firstname AND affiliations.lastname = professors.lastname;

-- Have a look at the 10 first rows of affiliations again
SELECT *
FROM affiliations
LIMIT 10;

--------------------------------------------------------
--
query.sql
12345678910
-- Update professor_id to professors.id where firstname, lastname correspond to rows in professors
UPDATE affiliations
SET professor_id = professors.id
FROM professors
WHERE affiliations.firstname = professors.firstname AND affiliations.lastname = professors.lastname;

-- Have a look at the 10 first rows of affiliations again
SELECT *
FROM affiliations
LIMIT 10;
--query result

firstname	lastname	function	organization_id	professor_id
Peter	Schneemann	NA	CIHA	442
Heinz	Zimmermann	Mitglied des Stiftungsrates	Stiftung zur Förderung des Schweizerischen Wirtschaftsarchivs am WWZ der Universität Basel	539
Heinz	Zimmermann	Mitglied des Verwaltungsrates	Remaco AG, Basel	539
Heinz	Zimmermann	Mitglied des Verwaltungsrates	Versicherung der Schweizer Ärzte, Bern	539
Heinz	Zimmermann	Mitglied des Verwaltungsrates	vescore Solutions, St. Gallen	539
Heinz	Zimmermann	Verwaltungsrat inkl. Präsidium Vorsorgestiftung	Viollier AG, Allschwil	539
Klaus	Zuberbühler	Co-directeur	Tai Monkey Project (Côte d'Ivoire)	541
Klaus	Zuberbühler	Directeur scientifique	Budongo Conservation Field Station (Ouganda)	541
Klaus	Zuberbühler	Enseignement	Université St Andrews (UK) 	541
Klaus	Zuberbühler	Membre du conseil scientifique	Max Planck Institute of Evolutionary Anthropology
