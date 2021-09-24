# Night Writer
<!-- Shields -->

![](https://img.shields.io/badge/Ruby-2.5.3-orange)

This converts text to braille and vice versa. 

### Table of Contents
  - [How to Install Application](#how-to-install-application)
  - [How to Use Application](#how-to-use-application)
  - [Testing](#testing)
  - [Licenses](#licenses)
  - [Contact](#contact)

## How to Install Application

For usage on your local machine, in your terminal navigate to a directory to store this application and run the instructions listed below:

```
git clone git@github.com:Yesi-MC/night_writer.git
cd night_writer
```


## How to Use Application
 In the terminal run the following;
```
ruby lib/night_writer.rb message.txt braille.txt 
```
* This command creates the text in the message.txt into braille. 


```
ruby lib/night_reader.rb braille.txt unbraille.txt
```
* This command will turn the message in braille back to text.  



## Testing

* For testing I used Minitest

> Minitest is a tool for unit testing that will ensure we have the intended functionality at each level of our code.

  
## Licenses

  * Ruby 2.5.3

## Contact

#### Yesi Meza: [LinkedIn](https://www.linkedin.com/in/yesimeza), [Email](mailto:yesi.meza10@gmail.com), [GitHub](https://github.com/Yesi-MC)
