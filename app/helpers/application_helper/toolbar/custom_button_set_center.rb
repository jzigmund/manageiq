class ApplicationHelper::Toolbar::CustomButtonSetCenter < ApplicationHelper::Toolbar::Basic
  button_group('custom_button_set_vmdb', [
    select(
      :custom_button_set_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :ab_group_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Button Group'),
          t,
          :klass => ApplicationHelper::Button::CustomButton
          ),
        button(
          :ab_button_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Button'),
          t,
          :klass => ApplicationHelper::Button::CustomButton,
          ),
        button(
          :ab_group_reorder,
          'pficon pficon-edit fa-lg-assign',
          N_('Reorder #{x_active_tree == :ab_tree ? "Buttons Groups" : "Buttons and Groups"}'),
          N_('Reorder'),
          :klass => ApplicationHelper::Button::CustomButton,
          ),
      ]
    ),
  ])
end
