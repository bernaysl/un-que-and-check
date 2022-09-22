/*eger tabloda bilinmeyen deger olmasini istemiyorsak not null kullaniriz*/
/*ornegin personelin mutlaka adi ve soyadi olmalidir, bunlar null olamaz*/
/*bosluk ve sifir degerleri not null ile ayni sey degildir*/
CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INTEGER
);


/* var olan bir tablodaki sütun için not null kosulu ekledik*/
/* var olan bir tabloya veri eklemek icin ALTER kullanırız*/

ALTER TABLE Employees
ALTER COLUMN age
SET NOT NULL;


/*UNIQE YAPISI*/
/*ornegin kullanici adlari aynı olamaz bu yuzden verilerinin benzersiz olmasini istedigimiz sutuna UNIQUE ekleriz*/
/*ALTER ile var olan tabloya UNIQUE kisitlamasini ekleme*/

ALTER TABLE Employees
ADD UNIQUE first_name


/*tabloyu olustururken UNIQUE ve CHECK yapıisini kullanma*/

CREATE TABLE gamers(
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(50) UNIQUE,
	age INTEGER CHECK (age>=18)
);


/*var olan tabloda CHECK yapisini kullanma*/

ALTER TABLE gamers
ADD CHECK(age>=18);
