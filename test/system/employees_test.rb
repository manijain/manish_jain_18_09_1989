require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Chat limit", with: @employee.chat_limit
    fill_in "Created at", with: @employee.created_at
    fill_in "Email limit", with: @employee.email_limit
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Is multisession allow", with: @employee.is_multisession_allow
    fill_in "Role", with: @employee.role
    fill_in "Select ring type", with: @employee.select_ring_type
    fill_in "Select volume", with: @employee.select_volume
    fill_in "Username email", with: @employee.username_email
    fill_in "Virtual first name", with: @employee.virtual_first_name
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Chat limit", with: @employee.chat_limit
    fill_in "Created at", with: @employee.created_at
    fill_in "Email limit", with: @employee.email_limit
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Is multisession allow", with: @employee.is_multisession_allow
    fill_in "Role", with: @employee.role
    fill_in "Select ring type", with: @employee.select_ring_type
    fill_in "Select volume", with: @employee.select_volume
    fill_in "Username email", with: @employee.username_email
    fill_in "Virtual first name", with: @employee.virtual_first_name
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
