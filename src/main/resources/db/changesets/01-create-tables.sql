-- -----------------------------------------------------
-- Schema ecommerce_app
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS "ecommerce_app";

CREATE SCHEMA "ecommerce_app";

-- -----------------------------------------------------
-- Table "ecommerce_app"."product_category"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "ecommerce_app"."product_category" (
    "id" serial NOT NULL PRIMARY KEY,
    "category_name" VARCHAR(255) NULL DEFAULT NULL
);

-- -----------------------------------------------------
-- Table "ecommerce_app"."product"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "ecommerce_app"."product" (
    "id" serial NOT NULL PRIMARY KEY,
    "sku" VARCHAR(255) DEFAULT NULL,
    "name" VARCHAR(255) DEFAULT NULL,
    "description" VARCHAR(255) DEFAULT NULL,
    "unit_price" DECIMAL(13,2) DEFAULT NULL,
    "image_url" VARCHAR(255) DEFAULT NULL,
    "active" BOOLEAN DEFAULT TRUE,
    "units_in_stock" INT DEFAULT NULL,
    "date_created" TIMESTAMP DEFAULT NULL,
    "last_updated" TIMESTAMP DEFAULT NULL,
    "category_id" BIGINT NOT NULL,
    FOREIGN KEY ("category_id") REFERENCES "ecommerce_app"."product_category" ("id")
);