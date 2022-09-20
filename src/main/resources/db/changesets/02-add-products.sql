-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO "ecommerce_app"."product_category"(category_name) VALUES ('BOOKS');

INSERT INTO "ecommerce_app"."product" (sku, name, description, image_url, active, units_in_stock,
                                       unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript', 'assets/images/products/placeholder.png',
        true, 100, 19.99, (SELECT id from "ecommerce_app"."product_category" where category_name = 'BOOKS'), NOW());

INSERT INTO "ecommerce_app"."product" (sku, name, description, image_url, active, units_in_stock,
                                       unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring', 'assets/images/products/placeholder.png',
        true, 100, 29.99, (SELECT id from "ecommerce_app"."product_category" where category_name = 'BOOKS'), NOW());

INSERT INTO "ecommerce_app"."product" (sku, name, description, image_url, active, units_in_stock,
                                       unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes', 'assets/images/products/placeholder.png',
        true, 100, 24.99, (SELECT id from "ecommerce_app"."product_category" where category_name = 'BOOKS'), NOW());

INSERT INTO "ecommerce_app"."product" (sku, name, description, image_url, active, units_in_stock,
                                       unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT','assets/images/products/placeholder.png',
        true, 100, 29.99, (SELECT id from "ecommerce_app"."product_category" where category_name = 'BOOKS'), NOW());

INSERT INTO "ecommerce_app"."product" (sku, name, description, image_url, active, units_in_stock,
                                       unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'The Go Programming Language: A to Z', 'Learn Go', 'assets/images/products/placeholder.png',
        true, 100, 24.99, (SELECT id from "ecommerce_app"."product_category" where category_name = 'BOOKS'), NOW());
