# download codeserver
if [ -d "~/SageMaker/vscode" ]; then
    # Folder exists
    cd ~/SageMaker/vscode
else
    # Folder does not exist
    mkdir -p ~/SageMaker/vscode/templateGenerator
    cd ~/SageMaker/vscode/templateGenerator
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/templateGenerator/{__name__.1_notebook_sql}.ipynb
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/templateGenerator/{__name__.2_python}.py
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/templateGenerator/{__name__.3_notebook_model_manual}.ipynb
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/templateGenerator/{__name__.4_notebook_model_sagemaker}.ipynb

    
    cd ~/SageMaker/vscode

    # download vsc extensions and other stuff
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/GitHub.copilot-nightly-1.88.149.vsix
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/GitHub.copilot-chat-0.3.2023060801.vsix
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/gtfish1988.gtfish01-0.1.0.vsix
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/gtfish1988.gtfish12-0.1.1.vsix
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/gtfish1988.gtfish13-0.1.0.vsix
    wget https://github.com/tgaochn/aws_sync/raw/main/vsc_extensions/gizak.shortcuts-0.0.1.vsix

    wget https://github.com/tgaochn/aws_sync/raw/main/shell/bashrc
    wget https://github.com/tgaochn/aws_sync/raw/main/shell/.vimrc
    cat bashrc >> ~/.bashrc
    cp .vimrc ~/

    wget https://github.com/tgaochn/aws_sync/raw/main/vsc%20setting/settings.json
    mkdir -p ~/SageMaker/.vscode
    cp settings.json ~/SageMaker/.vscode/settings.json

    # download and install codeserver
    wget https://github.com/tgaochn/aws_sync/raw/main/codeserver/notebook-instances-mod/install-codeserver.sh
    wget https://github.com/tgaochn/aws_sync/raw/main/codeserver/notebook-instances-mod/setup-codeserver.sh
fi

chmod +x install-codeserver.sh
chmod +x setup-codeserver.sh
sudo ./install-codeserver.sh
sudo ./setup-codeserver.sh
