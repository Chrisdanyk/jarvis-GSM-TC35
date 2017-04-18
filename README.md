## Description
Send and received SMS/Calls with Jarvis (voice assistant) using the GSM TC35 module


<img src="https://raw.githubusercontent.com/QuentinCG/jarvis-GSM-TC35/master/TC35_module.jpg" width="800">


## Usage
```
You: Envoies un SMS à Jane.
Jarvis: Dictez moi le SMS à envoyer à Jane.
You: Blablablablabla bla bla bla.
Jarvis: SMS envoyé à Jane.

You: Appelles Jane
Jarvis: Appel de Jane en cours.

You: Raccroches
Jarvis: Arret de l'appel...

You: Décroches
Jarvis: Appel en cours.
```


## How to install

1) Connect your GSM module to a serial port

2) Get the port name (you can find it out by calling GSMTC35.py without arguments)

3) Add this plugin in <a target="_blank" href="http://domotiquefacile.fr/jarvis/content/plugins">Jarvis project</a>

4) Configure the <a target="_blank" href="https://github.com/QuentinCG/jarvis-GSM-TC35/blob/master/config.sh">configuration file</a> to match your requirements.

5) Edit the <a target="_blank" href="https://github.com/QuentinCG/jarvis-GSM-TC35/blob/master/fr/commands">command file</a> to match the people name and phone number specified in the config file.

6) Enjoy


## Author
[Quentin Comte-Gaz](http://quentin.comte-gaz.com/)


## License

This project is under MIT license. This means you can use it as you want (just don't delete the plugin header).


## Contribute

If you want to add more examples or improve the plugin, just create a pull request with proper commit message and right wrapping.
