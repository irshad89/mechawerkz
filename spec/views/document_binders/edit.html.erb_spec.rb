require 'spec_helper'

describe "document_binders/edit" do
  before(:each) do
    @document_binder = assign(:document_binder, stub_model(DocumentBinder,
      :code => "MyString",
      :description => "MyString",
      :volume => "MyString",
      :contact_company_id => 1,
      :owned_by => 1,
      :location_id => 1
    ))
  end

  it "renders the edit document_binder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_binder_path(@document_binder), "post" do
      assert_select "input#document_binder_code[name=?]", "document_binder[code]"
      assert_select "input#document_binder_description[name=?]", "document_binder[description]"
      assert_select "input#document_binder_volume[name=?]", "document_binder[volume]"
      assert_select "input#document_binder_contact_company_id[name=?]", "document_binder[contact_company_id]"
      assert_select "input#document_binder_owned_by[name=?]", "document_binder[owned_by]"
      assert_select "input#document_binder_location_id[name=?]", "document_binder[location_id]"
    end
  end
end
