
_vehicle_related = [
        'body_type', 'condition_type', 'door_type',
        'drivetrain_type', 'fuel_type', 'make',
        'model', 'seating_cap', 'seller_type',
        'transmission_type', 'user']

_filter_fields = [
    'location', 'condition', 'seller', 'make', 'model',
    'trim', 'year_min', 'year_max', 'price_min', 'price_max',
    'body_type', 'exterior_color', 'interior_color', 'mileage_min',
    'mileage_max', 'drivetrain', 'fuel', 'engine', 'transmission',
    'door_type', 'seating_cap'
]

_type_one = ['Condition', 'Seller', 'Body',
            'ExteriorColor', 'InteriorColor', 'Drivetrain',
            'Fuel', 'Transmission', 'SeatingCap', 'Door', 'Currency'] # checkbox

_type_two = ['Make', 'Model', 'Engine'] # select

_type_three = ['Year', 'Price', 'Mileage'] # min-max

_mk_one = ['Condition', 'Seller', 'Make', 'Model',
            'Body', 'ExteriorColor', 'InteriorColor',
            'Currency', 'SeatingCap', 'Engine'
            'Transmission', 'Fuel', 'Drivetrain', 'Door',] # in DB

_mk_two = ['Mileage', 'Year', 'Price'] # static
