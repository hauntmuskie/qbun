-- Update script to modify the database schema
-- Add new columns to data_motor table

ALTER TABLE `data_motor` 
ADD COLUMN `tahun_produksi` varchar(10) NOT NULL AFTER `merek`,
ADD COLUMN `warna_motor` varchar(20) NOT NULL AFTER `tahun_produksi`;

-- Update existing data with default values
UPDATE `data_motor` SET 
`tahun_produksi` = '2023',
`warna_motor` = 'Hitam'
WHERE `tahun_produksi` = '' OR `warna_motor` = '';

-- Sample data updates for existing records
UPDATE `data_motor` SET 
`tahun_produksi` = '2023',
`warna_motor` = 'Merah'
WHERE `id_motor` = 'M001';

UPDATE `data_motor` SET 
`tahun_produksi` = '2024',
`warna_motor` = 'Putih'
WHERE `id_motor` = 'M002';

UPDATE `data_motor` SET 
`tahun_produksi` = '2024',
`warna_motor` = 'Biru'
WHERE `id_motor` = 'M003';

UPDATE `data_motor` SET 
`tahun_produksi` = '2023',
`warna_motor` = 'Hitam'
WHERE `id_motor` = 'M004';

UPDATE `data_motor` SET 
`tahun_produksi` = '2024',
`warna_motor` = 'Silver'
WHERE `id_motor` = 'M005';

UPDATE `data_motor` SET 
`tahun_produksi` = '2022',
`warna_motor` = 'Putih'
WHERE `id_motor` = 'M006';
