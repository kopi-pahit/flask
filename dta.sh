echo "Changing directory to app folder"
cd ~/storage/movies/dta || { echo "Failed to change directory"; exit 1; }
echo "Setting FLASK_APP environment variable"
export FLASK_APP=app.py || { echo "Failed to set FLASK_APP"; exit 1; }
echo "Running Flask app"
flask run --host=0.0.0.0 || { echo "Failed to run Flask app"; exit 1; }
