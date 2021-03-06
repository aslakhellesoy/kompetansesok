Så /^skal jeg kunne se .* "(.+)"$/ do |tittel|
  response.should contain(tittel)
end

Så /^jeg skal kunne gå til disse (\w+):$/ do |type, rader|
  rader.hashes.each do |rad|
    response.body.should contain(rad['tittel'])
  end
end

Så /^skal jeg få (\w+) "(.*)" nøstet under (\w+) "(.*)"$/ do |modell, modell_uuid, nostet_under, nostet_uuid|
  request.path_parameters[:controller].should == modell
  request.path_parameters[:id].should == modell_uuid
  request.path_parameters["#{nostet_under}_id".to_sym].should == nostet_uuid
end
