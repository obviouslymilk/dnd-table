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

        <Image image="cover" height="100" raycastTarget="false" rectAlignment="UpperLeft" />
    </Panel>
]]