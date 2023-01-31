# <img src='Workflow/icon.png' width='45' align='center' alt='icon'> Elgato Keylight Alfred Workflow

Control your elgato keylight from Alfred

<a href='https://github.com/brylok/elgato-keylight-workflow/releases/download/2023.1/Keylight.Control.alfredworkflow'>⤓ Download Here</a>

## Usage

Update the status of your key light by using the keylight control keyword (default: `key`) and then press space to see a list of options.



![Alfred search for key](Workflow/images/results.png)



## Configuration

Many settings are available through the built-in workflow configuration tool. You must configure the IP address of your key light for this workflow to work.


![Example configuration](Workflow/images/configuration.png)


## Example Scripts

I added a few example scripts in the example script folder.  These can be run in from the terminal as you would run any other program.  These will not work unless you update the IP address in the script to match the IP address of your key light. 


Example, from the root of this repo: 

`sh ./example-scripts/identifyLight.sh`

![Example configuration](Workflow/images/configuration.png)



## Thanks

Big Thanks to [adamesch](https://github.com/adamesch/elgato-key-light-api) for detailing the elgato api.
