return [[
    <Panel
        width="500"
        height="700"
        allowDragging="true"
        returnToOriginalPositionWhenReleased="false"
        restrictDraggingToParentBounds="false"
    >
        <VerticalLayout ignoreLayout="true" offsetXY="271 0" height="650" width="42" color="none" childForceExpandHeight="false" spacing="6">
            <Button class="sheet-tab" tooltip="Персонаж" icon="char-icon"/>
            <Button class="sheet-tab" tooltip="Инвентарь" icon="inv-icon" />
            <Button class="sheet-tab" tooltip="Заклинания" icon="spell-icon" />
        </VerticalLayout>

        <Panel image="cover" height="100" raycastTarget="false" rectAlignment="UpperLeft">
            <Text color="white" font="bold" fontSize="20">ИМЯ ПЕРСОНАЖА</Text>
        </Panel>

        <HorizontalLayout padding="12 12 24 12" spacing="12" height="600" rectAlignment="LowerCenter">
            <VerticalLayout image="frame">
                <Text>Hello!</Text>
                <Text>Hello!</Text>
            </VerticalLayout>

            <VerticalLayout image="frame">
                <Text>Hello!</Text>
                <Text>Hello!</Text>
            </VerticalLayout>
        </HorizontalLayout>
    </Panel>
]]