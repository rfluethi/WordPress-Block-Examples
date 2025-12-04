# Fish Block Theme - WordPress Playground Blueprint

A WordPress Block Theme with a fish theme for WordPress Playground.

## Usage

### Online Demo
Open the Blueprint directly in WordPress Playground:
```
https://playground.wordpress.net/?blueprint-url=https://raw.githubusercontent.com/rfluethi/WordPress-Block-Examples/main/block-theme-fish/fish-theme-blueprint.json
```

### What does this Blueprint do?

1. **Creates a WordPress instance** with PHP 8.2 and the latest WordPress version
2. **Installs and activates** the Fish theme from the GitHub repository
3. **Imports images** of fish from the GitHub repository:
   - Clownfish
   - Discus fish
   - Labyrinth fish
   - Malabar danio
   - Veiltail goldfish
   - Siamese fighting fish
   - Wallpaper with sea reef
   - Fish cover image (cropped)
4. **Creates blog posts** with featured images for each fish species:
   - Labyrinthfische (Labyrinth fish)
   - Diskusfische (Discus fish)
   - Siamesischer Kampffisch (Siamese fighting fish)
   - Schleierschwanz-Goldfisch (Veiltail goldfish)
   - Malabarbaerbling (Malabar danio)
   - Clownfisch (Clownfish)
5. **Creates a home page** with:
   - Cover block with parallax effect using the sea reef wallpaper
   - Fish logo as centered image
   - Heading "Naturwunder unter Wasser" (Natural wonders underwater)
   - Query loop displaying the latest 3 posts in a grid layout
6. **Sets the page as the site's home page**

## Structure

```
block-theme-fish/
├── fish-theme-blueprint.json  # Blueprint configuration
├── README.md                  # This file
├── media/                     # Fish images
│   ├── Clownfisch.webp
│   ├── Diskusfische.webp
│   ├── Labyrinthfische.webp
│   ├── Malabarbaerbling.webp
│   ├── Schleierschwanz-Goldfisch.webp
│   ├── Siamesischer-Kampffisch.webp
│   ├── Wallpaper-with-a-sea-reef.webp
│   └── cropped-Fisch-Titelseite.webp
└── theme/
    └── fish.zip               # Theme files
```

## Technical Details

- **PHP Version**: 8.2
- **WordPress Version**: Latest
- **Theme Source**: GitHub Repository (raw download)
- **Images Source**: GitHub Repository (raw githubusercontent)
- **Login**: admin / password
- **Blueprint Steps**: Modular with separate wp-cli commands for each post

## Customization

Each post is created with a separate `wp-cli` step, making it easy to customize:

1. **Edit Post Content**: Modify the `post_content` in each `wp eval` command
2. **Change Post Titles**: Update the `post_title` parameter
3. **Add More Posts**: Duplicate a step and change the fish name and attachment
4. **Modify the Home Page**: Edit the last step's `$content` variable with your custom blocks

### Example: Editing a Post

Find the step for the fish you want to edit, for example "Labyrinthfische":
```json
{
  "step": "wp-cli",
  "command": "wp eval '$attachment = get_posts(...); ... \"post_content\" => \"YOUR CUSTOM CONTENT HERE\" ...'"
}
```

## Features

### Modern Design
- Cover blocks with parallax effects
- Responsive grid layout
- Featured images for all posts
- Query loop with pagination

### Dynamic Content
- Images loaded from Media Library (no hardcoded URLs)
- Posts use `set_post_thumbnail()` for featured images
- Cover blocks use `useFeaturedImage:true` for optimal performance

### Responsive
- Grid layout adapts automatically (minimumColumnWidth: 23rem)
- Works on all screen sizes

## Version History

### Version 1.2
- ✅ Separated each post creation into individual wp-cli steps
- ✅ Easier customization of post content
- ✅ README translated to English

### Version 1.1
- ✅ Fixed repository name (WordPress-Block-Examples)
- ✅ Changed theme URL to raw download URL
- ✅ Fixed image URLs
- ✅ Removed duplicate steps
- ✅ Set landing page to frontend
- ✅ Automatic creation of homepage with all images
- ✅ Added Query Loop for blog posts

## Troubleshooting

**If images are not displayed:**
- Check if the files exist in the GitHub repository under `block-theme-fish/media/`
- Ensure the commit has been pushed
- Images must be available as raw URLs

**If the theme is not loaded:**
- Check if `fish.zip` exists under `block-theme-fish/theme/`
- The URL must point to the raw download version (not the web view)

**If posts are not created:**
- Check the browser console for PHP errors
- Verify that the image slugs match the attachment names in the Media Library

## License

This project is open source and available under the MIT License.
