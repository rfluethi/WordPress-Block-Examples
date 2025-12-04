# WordPress Block Theme - Fish Theme Example

This directory demonstrates how to create a **complete WordPress Block Theme** with custom homepage, query loops, and featured images using the **WordPress Playground Blueprint** system.

![Fish Theme Example](screenshot.png)

## Live Demo

```url
https://playground.wordpress.net/?blueprint-url=https://raw.githubusercontent.com/rfluethi/WordPress-Block-Examples/main/block-theme-fish/fish-theme-blueprint.json
```

## What This Example Shows

This WordPress Playground demonstrates **advanced Blueprint configuration** for creating a fully functional WordPress site with custom content and theme:

### Blueprint Features

- **Custom Block Theme Installation** - Automatically installs a theme from GitHub
- **Automated Media Import** - Imports multiple images via wp-cli commands
- **WXR Content Import** - Creates posts and pages from XML files
- **Featured Image Assignment** - PHP script automatically assigns images to posts
- **Placeholder Replacement** - Dynamic image URL replacement in page content
- **Homepage Configuration** - Sets custom page as site's front page

### Content Features

- **Cover Block with Parallax** - Hero section with background image and overlay content
- **Query Loop Pattern** - Grid display of posts with featured images
- **Gradient Text Effects** - Radial gradient styling on post titles
- **Responsive Grid Layout** - 3-column layout that adapts to screen size
- **Multi-language Content** - German content about different fish species

### The Problem This Solves

When creating WordPress Playground demos or test sites, manually setting up:
- Theme installation and activation
- Media library uploads
- Post creation with featured images
- Custom homepage design
- Featured image assignments

...can be time-consuming and error-prone. This Blueprint **automates the entire process** in under a minute.

### Implementation Techniques

- **Blueprint JSON** - Complete site configuration in one file
- **WP-CLI Commands** - Automated WordPress operations
- **WXR Import** - Standard WordPress export/import format
- **PHP Execution** - Custom PHP scripts for advanced setup
- **Meta Queries** - Finding attachments by filename
- **String Replacement** - Dynamic content generation

## How It Works

1. **Theme Installation**: Downloads and activates the Fish theme from GitHub
2. **Media Import**: Uses wp-cli to import 8 fish images from GitHub
3. **Content Import**: Imports 6 posts and 1 page from WXR files
4. **Image Assignment**: PHP script matches images to posts by filename
5. **Placeholder Replacement**: Replaces WALLPAPER_URL and TITLE_URL with actual image URLs
6. **Homepage Setup**: Sets the "Fische" page as the site's front page

## Key WordPress Features Used

- **Block Theme** - Modern WordPress theme with theme.json
- **Cover Blocks** - Full-width hero sections with background images
- **Query Loop** - Dynamic post display with pagination
- **Featured Images** - Post thumbnails in grid layout
- **Group Blocks** - Semantic HTML structure
- **Post Template** - Custom layout for query loop items
- **Gradient Styles** - CSS gradients on text elements

Perfect for: **Educational demos**, **wildlife blogs**, **aquarium websites**, **nature photography portfolios**, and learning **WordPress Playground Blueprint development**.

## Blueprint Advantages

- Fully automated setup (no manual configuration)
- Reproducible results every time
- Easy to fork and customize
- No server or hosting required
- Shareable via URL
- Perfect for testing and development

## Directory Structure

```text
/block-theme-fish/
├── fish-theme-blueprint.json       # Blueprint configuration
├── README.md                       # This file
├── media/                          # Fish images
│   ├── Clownfisch.webp
│   ├── Diskusfische.webp
│   ├── Labyrinthfische.webp
│   ├── Malabarbaerbling.webp
│   ├── Schleierschwanz-Goldfisch.webp
│   ├── Siamesischer-Kampffisch.webp
│   ├── Wallpaper-with-a-sea-reef.webp
│   └── cropped-Fisch-Titelseite.webp
├── pages/                          # WXR content files
│   ├── clownfisch.xml
│   ├── diskusfische.xml
│   ├── homepage.xml
│   ├── labyrinthfische.xml
│   ├── malabarbaerbling.xml
│   ├── schleierschwanz-goldfisch.xml
│   └── siamesischer-kampffisch.xml
└── theme/
    └── fish.zip                    # Custom block theme
```

## Technical Details

**Blueprint Configuration:**
- PHP Version: 8.2
- WordPress Version: Latest
- Login Credentials: admin / password

**Blueprint Steps:**
1. Login as admin
2. Set site name to "Fisch"
3. Install Fish theme from GitHub
4. Import 8 images via wp-cli
5. Import 7 WXR files (6 posts + 1 page)
6. Run PHP script for featured images and homepage setup

**Key PHP Operations:**
```php
// Set featured images
set_post_thumbnail($post->ID, $attachment[0]->ID);

// Replace placeholders
str_replace('WALLPAPER_URL', $wallpaper_url, $content);

// Set homepage
update_option('page_on_front', $page->ID);
update_option('show_on_front', 'page');
```

## Customization Guide

### Modify Post Content

Edit the XML files in `/pages/` directory:
```xml
<content:encoded><![CDATA[
<!-- wp:paragraph -->
<p>Your custom content here</p>
<!-- /wp:paragraph -->
]]></content:encoded>
```

### Add More Posts

1. Create a new XML file in `/pages/`
2. Add image to `/media/`
3. Add media import step to blueprint
4. Add WXR import step to blueprint
5. Update PHP script's `$post_attachments` array

### Change Theme

Replace `fish.zip` in `/theme/` directory and update the blueprint URL.

## Version History

### Version 1.3 (Current)
- ✅ Fixed featured image matching with filename mapping
- ✅ Improved PHP script with meta_query fallback
- ✅ Simplified cover block syntax
- ✅ Removed ID attributes from blocks

### Version 1.2
- ✅ Separated WXR files for each post
- ✅ Added homepage with query loop
- ✅ Implemented placeholder replacement

### Version 1.1
- ✅ Initial release with theme and content

## License

This project is open source and available under the MIT License.
