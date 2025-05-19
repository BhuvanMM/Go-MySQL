CREATE TABLE `Product` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text,
  `rating` int NOT NULL,
  `num_reviews` int NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `count_in_stock` int NOT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime
);

CREATE TABLE `Order` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) NOT NULL,
  `tax_price` decimal(10,2) NOT NULL,
  `shipping_price` decimal(10,2) NOT NULL,
  `tottal_price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime
);

CREATE TABLE `Order_item` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int NOT NULL
);

ALTER TABLE `Order_item` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`id`);

ALTER TABLE `Order_item` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);
