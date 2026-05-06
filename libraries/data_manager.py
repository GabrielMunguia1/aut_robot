def get_login_data(country, environment):
    """
    Retorna los datos de login según país y ambiente.
    Por ahora usamos datos fijos para Demo Applitools.
    """

    login_data = {
        "GT": {
            "QA": {
                "username": "demo",
                "password": "demo"
            }
        },
        "CO": {
            "QA": {
                "username": "demo",
                "password": "demo"
            }
        }
    }

    return login_data[country][environment]