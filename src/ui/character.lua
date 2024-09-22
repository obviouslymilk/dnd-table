return [[
    <VerticalLayout
        width="500"
        height="600"
        color="${color}"
        spacing="12"
        padding="12"
        childForceExpandHeight="false"
        allowDragging="true"
        returnToOriginalPositionWhenReleased="false"
    >
        <HorizontalLayout spacing="12" childForceExpandHeight="false">
            <Button minHeight="50" onClick="SelectPanel('character')">Персонаж</Button>
            <Button minHeight="50" onClick="SelectPanel('inventory')">Инвентарь</Button>
        </HorizontalLayout>
        <Text id="${color}_char" font="bold">Лист персонажа</Text>
        <Text id="${color}_inv" active="false">Инвентарь персонажа</Text>
    </VerticalLayout>
]]