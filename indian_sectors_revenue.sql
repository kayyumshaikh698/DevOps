CREATE TABLE pune.indian_sectors_revenue (
    id SERIAL PRIMARY KEY,
    sector_name VARCHAR(100) NOT NULL UNIQUE,
    macro_division VARCHAR(50) NOT NULL, -- Primary, Secondary, Tertiary
    category VARCHAR(50) NOT NULL,       -- Specific industry group
    revenue_lakh_crores NUMERIC(8, 2) NOT NULL,
    fiscal_year VARCHAR(10) NOT NULL DEFAULT '2025-26'
);

INSERT INTO pune.indian_sectors_revenue (sector_name, macro_division, category, revenue_lakh_crores) VALUES
-- TERTIARY / SERVICES (Largest division at ~55% of GVA)
('Banking, Financial Services & Insurance (BFSI)', 'Tertiary', 'Financial Services', 18.20),
('Information Technology (IT) & BPM', 'Tertiary', 'Technology', 21.50),
('Retail & E-commerce', 'Tertiary', 'Commerce', 11.50),
('Real Estate & Urban Infrastructure', 'Tertiary', 'Construction & Housing', 9.80),
('Healthcare, Hospitals & Diagnostics', 'Tertiary', 'Social Services', 4.30),
('Telecom & Network Infrastructure', 'Tertiary', 'Communication', 3.10),
('Aviation, Tourism & Hospitality', 'Tertiary', 'Travel & Leisure', 2.80),
('Logistics, Supply Chain & Warehousing', 'Tertiary', 'Transportation', 7.40),
('Media, Entertainment & Animation', 'Tertiary', 'Media', 2.10),
('Education & EdTech', 'Tertiary', 'Social Services', 1.90),

-- SECONDARY / INDUSTRY (Manufacturing & Construction)
('Automobile, EV & Components', 'Secondary', 'Manufacturing', 10.80),
('Pharmaceuticals & Life Sciences', 'Secondary', 'Manufacturing', 4.10),
('Textiles, Apparel & Garments', 'Secondary', 'Manufacturing', 3.80),
('Steel, Metallurgy & Heavy Machinery', 'Secondary', 'Core Infrastructure', 7.20),
('Chemicals & Petrochemicals', 'Secondary', 'Manufacturing', 4.90),
('Power, Renewable Energy & Utilities', 'Secondary', 'Core Infrastructure', 5.50),

-- PRIMARY / AGRICULTURE & ALLIED (Largest employer)
('Agriculture, Forestry & Horticulture', 'Primary', 'Agri-Allied', 51.20),
('Mining, Quarrying & Mineral Extraction', 'Primary', 'Natural Resources', 3.60);
