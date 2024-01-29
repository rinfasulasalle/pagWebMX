CREATE DATABASE IF NOT EXISTS empresa_mx;

USE empresa_mx;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url_imagen VARCHAR(255) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precip DECIMAL(10, 2) NOT NULL
);


INSERT INTO productos (url_imagen, titulo, descripcion, precip) VALUES
('img/product_01.png', 'Saco de Comida Premium para Vacas Lecheras', 'Este saco de comida para vacas lecheras es una fórmula de alta calidad diseñada para satisfacer las necesidades nutricionales de las vacas en producción de leche. Cada saco contiene una mezcla equilibrada de ingredientes de primera calidad, seleccionados cuidadosamente para garantizar la salud y el rendimiento óptimo de sus vacas.', 480.0),
('img/product_02.png', 'Alimento Premium para Gallos de Pelea', 'Nuestro alimento premium para gallos de pelea es la elección perfecta para quienes valoran el bienestar y el rendimiento de sus gallos. Cada saco contiene una mezcla de ingredientes de primera calidad cuidadosamente seleccionados para proporcionar a sus aves la nutrición superior que necesitan para competir en su mejor forma.', 430.0),
('img/product_03.png', 'Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino', 'Alto Contenido de Fibra y Forraje: Nuestra fórmula está enriquecida con fibra y forraje de calidad para promover una digestión saludable y satisfacer las necesidades naturales de pastoreo de los caballos. Balance Nutricional Óptimo: Contiene la proporción adecuada de proteínas, carbohidratos, grasas, vitaminas y minerales esenciales para mantener una salud óptima y una energía sostenible. Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E.', 490.0),
('img/product_04.png', 'Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino', 'Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E, así como minerales como el zinc, selenio y calcio, que respaldan el sistema inmunológico, la salud ósea y la vitalidad general. Pelo Brillante y Piel Sana: Los ácidos grasos esenciales promueven un pelaje saludable y brillante, así como una piel en buen estado. Fortalecimiento de Huesos y Articulaciones: La adición de glucosamina y condroitina ayuda a mantener la salud de las articulaciones y el sistema locomotor.', 400.0),
('img/product_05.png', 'Comida Premium para Cerdos: Nutrición de Calidad para el Crecimiento y la Salud', 'Fortalecimiento Óseo: Contiene calcio y otros minerales esenciales para mantener huesos fuertes y saludables. Ideal para Diferentes Etapas de Vida: Apta para cerdos en crecimiento, reproductores y cerdos en mantenimiento, proporcionando una nutrición adaptada a las necesidades de cada uno. Facilidad de Alimentación: Diseñada para ser apetitosa y fácilmente consumible, promoviendo una alimentación constante y satisfactoria.', 500.0);
