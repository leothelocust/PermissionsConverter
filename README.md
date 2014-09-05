PermissionsConverter
====================

Converts file/directory permissions from "drwxr-xr-x" format to "755" format.

## Installation
Run the following command to download the file:

    curl https://raw.githubusercontent.com/leothelocust/PermissionsConverter/master/permcon.sh


Make it globally accessable:

    mv permcon.sh /usr/local/bin/permcon

Make it executable:


    sudo chmod +x permcon


## Usage
Paste the following into command line:

    permcon drwxr-xr-x
    # or
    permcon -rw-r--r--

The output is as follows:

    Directory
    755
    # or
    File
    644
    
**That's all folks!**

If you discover a problem please create an issue ticket and I'll do my best fix it.
