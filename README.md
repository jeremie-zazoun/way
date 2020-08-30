# way

## Usage

To use this script you need to:
1. clone the repo
2. install Ruby
3. go to the repo directory
4. run `bundle install` if you want to be able to run the tests
5. type `ruby app/save_data.rb`

You can display the help by typing: `ruby app/save_data.rb ?`
You can specify the output file by adding it as the first argument: `ruby app/save_data.rb <filename>`


## Design
The script will call the `GetData` class in a loop until all the data has been read.
Then it will save it in a file. either the default one `out.txt` or the one you can specify.
Since the data is an array of strings, the data is saved in a JSON format allowing to load it using a JSON parser.
Of course you will need to rewritte the `GetData` class for the script to actually do something.


## Improvements
Possible improvements are:
1. Configuration is hardcoded, export it to environment variables
2. Add some FTP/S3 support
3. ...
