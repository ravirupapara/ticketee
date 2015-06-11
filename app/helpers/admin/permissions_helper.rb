module Admin::PermissionsHelper

	def permissions
		{
		"view" => "View",
		"create tickets" => "Create Tickets",
		"edit_tickets" => "Edit Tickets",
		"delete_tickets" => "Delete Tickets"
		}
	end

end
