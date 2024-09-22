return [[
    <VerticalLayout
        visibility="${color}"
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
            <Button minHeight="50" onClick="SelectPanel(${color})" font="bold">Персонаж</Button>
            <Button minHeight="50" onClick="SelectPanel(${color})" font="bold">Инвентарь</Button>
        </HorizontalLayout>
        <Text id="${color}_char" font="regular">Лист персонажа</Text>
        <Text id="${color}_inv" active="false" font="regular">Инвентарь персонажа</Text>
    </VerticalLayout>
]]