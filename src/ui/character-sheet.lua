-- &#xA; новая строка
-- &lt; открывающая скобка
-- &gt; закрывающая скобка
-- &lt;&gt;
return [[
    <Panel
        width="500"
        height="700"
        allowDragging="true"
        returnToOriginalPositionWhenReleased="false"
        restrictDraggingToParentBounds="false"
        id="${color}_sheet"
        visibility="${color}"
        color="#ffffff"
    >
        <VerticalLayout ignoreLayout="true" offsetXY="271 0" height="650" width="42" color="none" childForceExpandHeight="false" spacing="6">
            <Button class="sheet-tab" tooltip="Персонаж" icon="char-icon"/>
            <Button class="sheet-tab" tooltip="Инвентарь" icon="inv-icon" />
            <Button class="sheet-tab" tooltip="Заклинания" icon="spell-icon" />
        </VerticalLayout>

        <Panel image="cover" height="100" raycastTarget="false" rectAlignment="UpperLeft">
            <HorizontalLayout offsetXY="0 10">
                <VerticalLayout childForceExpandHeight="false" childAlignment="MiddleCenter">
                    <InputField class="sheet-header-input"
                        placeholderText="ИМЯ ПЕРСОНАЖА"
                        font="bold"
                        fontSize="20"
                        textAlignment="LowerLeft"
                        characterLimit="20"
                        textOffset="20 0 0 0"
                    />
                    <InputField
                        class="sheet-header-input"
                        placeholder="Класс Уровень (Воин 1)"
                        textAlignment="UpperLeft"
                        characterLimit="20"
                        textOffset="20 0 0 0"
                        textColor="#a3a3a3"
                    />
                </VerticalLayout>
                <Panel></Panel>
            </HorizontalLayout>
        </Panel>

        <GridLayout height="44" rectAlignment="UpperCenter" offsetXY="0 -75" cellSize="56 64" childAlignment="MiddleCenter" spacing="24 0">
            <Panel image="stat-frame" />
            <Panel image="stat-frame" />
            <Panel image="stat-frame" />
            <Panel image="stat-frame" />
            <Panel image="stat-frame" />
            <Panel image="stat-frame" />
        </GridLayout>

        <HorizontalLayout padding="6 6 36 6" spacing="6" height="600" rectAlignment="LowerCenter">
            <VerticalLayout image="frame">
            </VerticalLayout>
            <VerticalLayout image="frame">
            </VerticalLayout>
        </HorizontalLayout>
    </Panel>
]]