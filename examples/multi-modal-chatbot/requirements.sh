
cd $(dirname $0)

[ ! -d  ~/.venv/ai-burr ] && {
    echo; echo "Creating venv: ~/.venv/ai-burr"
    /usr/bin/python3 -m venv ~/.venv/ai-burr
    echo
    du -sh ~/.venv/ai-burr/
}
#exit

echo; echo "Activating venv: ~/.venv/ai-burr"
. ./activate.rc

echo; echo "Installing requirements into venv:"
python3 -m pip install -r requirements.txt 

echo
du -sh ~/.venv/ai-burr/

#echo
#python3 -m pip install loguru==0.7.2 uvicorn==0.29.0
