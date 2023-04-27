import flask
from flask.cli import FlaskGroup

def setup_app():
    # Set up your Flask app here
    pass

def test():
    setup_app()
    # Run your tests here
    pass

def build_static():
    setup_app()
    # Compile your static assets here
    pass

if __name__ == '__main__':
    cli = FlaskGroup()
    cli.add_command(test)
    cli.add_command(build_static)
    cli()
