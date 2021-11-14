after_bundle do
  git :init
  git add: "."
  git commit: %( -m 'Initial commit' )
end

# To reuse other templates
# run 'rails app:template LOCATION="https://railsbytes.com/script/x7msmL"'
