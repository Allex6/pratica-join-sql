-- Questão 01
SELECT users.id, users.name, cities.name AS city FROM users
JOIN cities
ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

-- Questão 02
SELECT 
	testimonials.id, 
	testimonials.message, 
	writer.name AS writer, 
	recipient.name AS recipient
FROM testimonials
JOIN users writer
ON testimonials."writerId" = writer.id
JOIN users recipient
ON testimonials."recipientId" = recipient.id;

-- Questão 03
SELECT
	users.id,
	users.name AS "name",
	courses.name AS course,
	schools.name AS school,
	educations."endDate"
FROM courses
JOIN educations
ON courses.id = educations."courseId"
JOIN users
ON users.id = educations."userId" AND educations."userId" = 30
JOIN schools
ON schools.id = educations."schoolId"
WHERE educations.status = 'finished';

-- Questão 04
SELECT
	users.id,
	users.name,
	roles.name AS "role",
	companies.name AS company,
	experiences."startDate"
FROM companies
JOIN experiences
ON 
	experiences."companyId" = companies.id AND 
	experiences."endDate" IS NULL
JOIN users
ON experiences."userId" = users.id
JOIN roles
ON roles.id = experiences."roleId"
WHERE users.id = 50;