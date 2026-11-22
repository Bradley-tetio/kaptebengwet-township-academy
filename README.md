# Kaptebengwet Township Academy

The KTA school portal is a static website connected to the school's Supabase project.

## Website files
Upload the contents of the prepared website package to the repository root. `index.html`, `app.js`, `styles.css`, and `config.js` must sit directly in the root (not inside an extra folder).

## GitHub Pages
After uploading the website files, open **Settings → Pages**, choose **Deploy from a branch**, select `main` and `/(root)`, then Save.

## Security
`config.js` must contain only the Supabase publishable key. Never commit a service-role or secret key. Supabase Row Level Security must protect private learner records.
