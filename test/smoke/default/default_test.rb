# # encoding: utf-8

# Inspec test for recipe httpd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
# found at http://inspec.io/docs/reference/resources/


# We want to test if port 80 is listening.
describe port(80) do
  it { should be_listening }
end

# we should see a welcome message.
describe command('curl http://localhost') do
  its(:stdout) { should match(/Welcome Home/) }
end 
