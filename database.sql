-- Créer la base
CREATE DATABASE IF NOT EXISTS cosapapa_db;
USE cosapapa_db;

-- Table des catégories (pizza, produits, dolci, vin, etc.)
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

-- Table des plats (pizzas, desserts, etc.)
CREATE TABLE plats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(6,2),
    categorie_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (categorie_id) REFERENCES categories(id)
);

-- Remplir les catégories
INSERT INTO categories (nom) VALUES
('Famous Papa’s Pizza'),
('Buoni prodotti'),
('Dolci'),
('Vino');

-- Remplir les plats (Pizzas)
INSERT INTO plats (nom, description, prix, categorie_id) VALUES
('Yellow Papa', 'Sauce tomate jaune, mozzarella fior di latte, jambon de Parme, stracciatella, basilic', 22.00, 1),
('Bresaola', 'Tomates jaunes et rouges, mozzarella, roquette, bresaola, copeaux de parmesan', 24.00, 1),
('Cheesy Papa\'s', 'Ricotta, gorgonzola, parmesan, fior di latte mozzarella, basilic', 24.00, 1),
('Pepe Daniele', 'Sauce pesto, mozzarella fior di latte, jambon San Daniele, Tomates Piennolo jaunes, Burrata', 26.00, 1),
('Autantico Popolo', 'Sauce Tomate, Mozzarella fior di latte', 18.00, 1),
('Santanas e Diabolo', 'Sauce tomate, mozzarella fior di latte, spianata', 22.00, 1),
('Deep Purple', 'Crème d\'aubergine, mozzarella fior di latte, aubergine, tomates pelées, pesto', 22.00, 1),
('Pinocchio e pistacchio', 'Mozzarella fior di latte, burrata, mortadelle, crème de pistache', 24.00, 1);

-- Produits
INSERT INTO plats (nom, description, prix, categorie_id) VALUES
('Charcuteries italiennes - Salame', 'Charcuteries italiennes à partager - Salame', 16.00, 2),
('Charcuteries italiennes - Jambon de Parme', 'Charcuteries italiennes à partager - Jambon de Parme', 16.00, 2),
('Charcuteries italiennes - Mortadelle', 'Charcuteries italiennes à partager - Mortadelle à la pistache', 18.00, 2),
('Burrata', 'Burrata 125gr, Tomates cerises, pignons, huile d’olive et basilic', 22.00, 2),
('Carpaccio de boeuf au pesto', 'Carpaccio de boeuf, tomates cerises, pignons, huile d’olive et basilic', 32.00, 2);

-- Desserts (Dolci)
INSERT INTO plats (nom, description, prix, categorie_id) VALUES
('Tiramisu', 'Tiramisu au Café, poudré de cacao', 14.00, 3),
('Panna cotta', 'Panna cotta aux fruits rouges', 14.00, 3),
('Glace Mini', 'Mini glace', 3.00, 3),
('Glace Moyenne', 'Moyenne glace', 6.00, 3),
('Glace Maxi', 'Maxi glace', 9.00, 3);

-- Boissons (Vino)
INSERT INTO plats (nom, description, prix, categorie_id) VALUES
('Champagne Brut 75cl', 'Moët & Chandon - AOP / Louis Roederer - AOP', 160.00, 4),
('Vin Rouge', 'Sangiovese Superiore Pandolfa Federico - 2002 DOC (Emilia Romagna)', 60.00, 4),
('Vin Blanc 75cl', 'Roero Arneis Giovanni Rosso - 2023 DOCG (Piemont)', 55.00, 4),
('Vin Rosé 75cl', 'Domaine de le Rouillère - 2023 AOP', 50.00, 4),
('Vin Rosé 150cl', 'Domaine de le Rouillère - 2023 AOP', 100.00, 4);
