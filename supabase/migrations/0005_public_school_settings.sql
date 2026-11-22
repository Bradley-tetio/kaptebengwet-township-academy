-- Public school contact details: only these six non-sensitive keys are readable anonymously.
-- School admins and the headteacher retain their existing settings write policies.
INSERT INTO public.settings (key, value) VALUES
  ('school_motto', ''),
  ('school_email', ''),
  ('school_telephone', ''),
  ('school_location', ''),
  ('school_latitude', '-0.5778135'),
  ('school_longitude', '35.3050687')
ON CONFLICT (key) DO NOTHING;

DROP POLICY IF EXISTS kta_public_school_settings_read ON public.settings;
CREATE POLICY kta_public_school_settings_read
  ON public.settings
  FOR SELECT
  TO anon
  USING (key IN (
    'school_motto', 'school_email', 'school_telephone',
    'school_location', 'school_latitude', 'school_longitude'
  ));

GRANT SELECT ON public.settings TO anon;
