#!/bin/sh

TEMPLATES_DIR="$HOME/Library/Developer/Xcode/Templates/File Templates"
VIPER_TEMPLATE="VIPER.xctemplate"

# Space
echo ""

echo "Directory to install the template: $TEMPLATES_DIR"

# Create the TEMPLATES dir if required 
if [ ! -d "$TEMPLATES_DIR" ]
then
	mkdir -p "$TEMPLATES_DIR"
fi

# Remove old template if exist
if [ -d "$TEMPLATES_DIR/$VIPER_TEMPLATE" ]
then
	rm -r "$TEMPLATES_DIR/$VIPER_TEMPLATE"
fi

# Copying the template
cp -R "$VIPER_TEMPLATE" "$TEMPLATES_DIR"

# Check if the template has been installed successfully
if [ -d "$TEMPLATES_DIR/$VIPER_TEMPLATE" ]
then
	echo "✅ Template has been installed successfully!"
else
	# Print different messages if script has been run with 'sudo' or not
	if [ "$EUID" -ne 0 ]
	then
		echo "❌ Something went wrong! Please try to run 'sudo sh install.sh' or copy `$VIPER_TEMPLATE` directory manually"
	else
		echo "❌ Something went wrong! Please copy '$VIPER_TEMPLATE' directory manually"
	fi
fi

# Space
echo ""
