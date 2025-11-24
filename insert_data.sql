USE tifosi;

-- =====================================================
--  INSERT : marque
-- =====================================================

INSERT INTO marque (nom) VALUES
('Coca-Cola'),
('Pepsi'),
('Fanta'),
('Lipton'),
('San Pellegrino'),
('Evian'),
('Orangina'),
('Schweppes'),
('Red Bull'),
('Monster');

-- =====================================================
--  INSERT : boisson
-- =====================================================

INSERT INTO boisson (nom, prix, id_marque) VALUES
('Coca-Cola', 2.50, 1),
('Coca-Cola Zero', 2.50, 1),
('Pepsi', 2.40, 2),
('Fanta Orange', 2.30, 3),
('Lipton Ice Tea', 2.20, 4),
('San Pellegrino', 2.00, 5),
('Evian', 1.80, 6),
('Orangina', 2.30, 7),
('Schweppes Agrum', 2.50, 8),
('Red Bull', 3.20, 9);

-- =====================================================
--  INSERT : ingredient
-- =====================================================

INSERT INTO ingredient (nom, prix) VALUES
('Ail', 5.00),
('Ananas', 3.50),
('Artichaut', 2.20),
('Bacon', 4.90),
('Base Tomate', 3.00),
('Base Crème', 3.40),
('Champignon', 4.50),
('Chèvre', 8.00),
('Cresson', 7.80),
('Emmental', 5.50),
('Gorgonzola', 2.90),
('Jambon Cuit', 7.60),
('Jambon Fumé', 8.10),
('Oeuf', 0.60),
('Oignon', 0.30),
('Olive Noire', 4.10),
('Olive Verte', 4.30),
('Parmesan', 6.50),
('Piment', 3.00),
('Poivre', 4.40),
('Pomme de Terre', 3.90),
('Raclette', 2.70),
('Salami', 3.50),
('Tomate Cerise', 2.50),
('Mozzarella', 2.00);

-- =====================================================
--  INSERT : focaccia
-- =====================================================

INSERT INTO focaccia (nom, prix) VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);

-- =====================================================
--  INSERT : comprend (focaccia ↔ ingredient)
-- =====================================================

-- Mozaccia (id_focaccia = 1)
INSERT INTO comprend VALUES
(1, 5, 200),
(1, 25, 50),
(1, 9, 20),
(1, 13, 80),
(1, 1, 2),
(1, 3, 20),
(1, 7, 40),
(1, 18, 50),
(1, 20, 1),
(1, 16, 20);

-- Gorgonzollaccia (id_focaccia = 2)
INSERT INTO comprend VALUES
(2, 5, 200),
(2, 11, 50),
(2, 9, 20),
(2, 1, 2),
(2, 7, 40),
(2, 18, 50),
(2, 20, 1),
(2, 16, 20);

-- Raclaccia (id_focaccia = 3)
INSERT INTO comprend VALUES
(3, 5, 200),
(3, 22, 50),
(3, 9, 20),
(3, 1, 2),
(3, 7, 40),
(3, 18, 50),
(3, 20, 1);

-- Emmentalaccia (id_focaccia = 4)
INSERT INTO comprend VALUES
(4, 5, 200),
(4, 10, 60),
(4, 9, 20),
(4, 1, 2),
(4, 20, 1);

-- Tradizione (id_focaccia = 5)
INSERT INTO comprend VALUES
(5, 5, 200),
(5, 25, 50),
(5, 9, 20),
(5, 20, 1);

-- Hawaienne (id_focaccia = 6)
INSERT INTO comprend VALUES
(6, 5, 200),
(6, 2, 60),
(6, 9, 20),
(6, 20, 1);

-- Américaine (id_focaccia = 7)
INSERT INTO comprend VALUES
(7, 5, 200),
(7, 4, 80),
(7, 9, 20),
(7, 20, 1);

-- Paysanne (id_focaccia = 8)
INSERT INTO comprend VALUES
(8, 5, 200),
(8, 21, 80),
(8, 9, 20),
(8, 20, 1);

-- =====================================================
--  INSERT : menu
-- =====================================================

INSERT INTO menu (nom, prix) VALUES
('Menu Classique', 13.00),
('Menu Double', 16.00),
('Menu Premium', 18.00),
('Menu Paysan', 17.50),
('Menu America', 17.00),
('Menu Hawaï', 17.20);

-- =====================================================
--  INSERT : est_constitue (menu ↔ focaccia)
-- =====================================================

INSERT INTO est_constitue VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 8),
(5, 7),
(6, 6);

-- =====================================================
--  INSERT : contient (menu ↔ boisson)
-- =====================================================

INSERT INTO contient VALUES
(1, 2),
(2, 4),
(3, 10),
(4, 5),
(5, 6),
(6, 9);

-- =====================================================
--  INSERT : client
-- =====================================================

INSERT INTO client (nom, email, code_postal) VALUES
('Dupont', 'dupont@gmail.com', 75001),
('Martin', 'martin@gmail.com', 75015),
('Bernard', 'bernard@gmail.com', 75012),
('Petit', 'petit@gmail.com', 75017);

-- =====================================================
--  INSERT : achete (client ↔ menu)
-- =====================================================

INSERT INTO achete VALUES
(1, 1, '2024-11-18'),
(1, 3, '2024-11-21'),
(2, 2, '2024-11-15'),
(3, 5, '2024-11-11'),
(4, 6, '2024-11-16');