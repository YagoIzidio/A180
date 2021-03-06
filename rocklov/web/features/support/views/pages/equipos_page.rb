class EquiposPage
    include Capybara::DSL

    def create(equipo)
        # checkpoint com timeout explicito
        page.has_css?("#equipoForm")

        thumb = Dir.pwd + "/features/support/fixtures/images/" + equipo[:img]

        find("#thumbnail input[type=file]", visible: false).set thumb
    
        find("input[placeholder$=equipamento]").set equipo[:nome]
        find("#category").find('option', text: equipo[:categoria]).select_option
        find("#price").set equipo[:preco]
    
        click_button "Cadastrar"



    end

end