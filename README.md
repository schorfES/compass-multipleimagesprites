#compass-multipleimagesprites

Create multiple sprites for regular displays and retina-displays. This compass mixin combines some [Gist](https://gist.github.com/thulstrup/2140082) approaches and spice it with the possebility to use multiple sprites through the same mixin.

**Why multiple sprites?** Think about you have for example multiple themes for a website, but there are graphics which always stay the same. Do you copy them all into each theme? When you add a new image you add them to into all themes? So you need a _common_ sprite and a _theme_ sprite...

## Usage

```SCSS
	// import the image-sprite mixin:
	@import "image-sprite";
	
	// setup your pathes:
	// (you can add as much as you want)
	@include image-sprite-addurl("common", "path-to-common/");
	@include image-sprite-addurl("themeA", "path-to-theme-a/");
	
	// use your sprites:
	.logo {
		// include the logo from the default sprite:
		@include image-sprite("common", "logo", true);
	}
	
	.button {
		@include image-sprite("themeA", "button", true);
	}
```

### @include image-sprite-addurl($key, $path);

This mixin sets the pathes for each sprite map you want to use.

* ```$key``` is the name for the specific sprite sheet
* ```$path``` is the path for the spritesheet directory located in the images folder which is defiend in your ```config.rb```. The path you provide to the mixin should always end with a ```/```.

### @include image-spriteimage-sprite($key, $name, $dimensions: false);

This mixin includes the image from the generated compass sprite.

* ```$key``` is the name for the specific sprite sheet
* ```$name``` is the name for the image in the sprite
* ```$dimensions``` is a boolean which defines whether the image dimensions (```width``` and ```height```) should be rendered when set to ```true```. It default value is ```false```.

## Settings

You can setup the behaviour of the mixin by changing values of variables:

* ```$image-sprite-path-default``` defines the subfolder for the sprite sheet which is used for non retina devices. This value is used to build the full path to source files combined with the value given through the ```image-sprite-addurl``` mixin. The default value is ```"default/"```. The path should end with a ```/```.
* ```$image-sprite-path-retina``` defines the subfolder for the sprite sheet which is used for retina devices. This value is used to build the full path to source files combined with the value given through the ```image-sprite-addurl``` mixin. The default value is ```"retina/"```. The path should end with a ```/```.
* ```$image-sprite-files``` defines the pattern for the image files which should be used for the generated sprite sheet. The default value is ```"*.png"```.
* ```$image-sprite-compass-fix``` is a boolean which enables a fix for compass where compass isn't able to locale the sprite sheet locations. This issue should be fixed in upcoming compass versions. The default value is ```true```. To disable this feature set it to ```false```.
*  ```$image-sprite-support-respondjs``` is a boolean which enables support for usage with respond.js for older browsers. Default value is ```false```.

## License

This project is under [MIT Licende](LICENSE).

The _[IKONS](http://ikons.piotrkwiatkowski.co.uk/)_ icons which are used in the example are property of [Piotr Kwiatkowski
](http://www.piotrkwiatkowski.co.uk/) which and are free to use according their [license](http://ikons.piotrkwiatkowski.co.uk/license.html).