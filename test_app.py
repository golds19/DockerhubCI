from app import app

def test_home():
    """Test the home page"""
    response = app.test_client().get('/')

    assert response.status_code == 200
    assert response.data == b"Hello world"