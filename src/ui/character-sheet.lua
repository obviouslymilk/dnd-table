-- &#xA; новая строка
-- &lt; открывающая скобка
-- &gt; закрывающая скобка
-- &lt;&gt;
-- &lt;size=16&gt; &lt;/size&gt;
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
            <Button class="sheet-tab" tooltip="Параметры" icon="stats-icon"/>
            <Button class="sheet-tab" tooltip="Особенности" icon="char-icon"/>
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
                        placeholder="Класс"
                        textAlignment="UpperLeft"
                        characterLimit="20"
                        textOffset="20 0 0 0"
                        textColor="#a3a3a3"
                    />
                </VerticalLayout>
                <Panel></Panel>
            </HorizontalLayout>
        </Panel>

        <GridLayout height="44" rectAlignment="UpperCenter" offsetXY="0 -75" cellSize="55 63" childAlignment="MiddleCenter" spacing="24 0">
            <Panel image="stat-frame"
            >
                <Text class="stat-name">Сил</Text>
                <Text class="stat-mod">-1</Text>
                <Text class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Лов</Text>
                <Text class="stat-mod">+2</Text>
                <Text class="stat-value">15</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Тел</Text>
                <Text class="stat-mod">+0</Text>
                <Text class="stat-value">10</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Инт</Text>
                <Text class="stat-mod">+2</Text>
                <Text class="stat-value">14</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Мдр</Text>
                <Text class="stat-mod">+1</Text>
                <Text class="stat-value">12</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Хар</Text>
                <Text class="stat-mod">-1</Text>
                <Text class="stat-value">9</Text>
            </Panel>
        </GridLayout>

        <HorizontalLayout padding="6 6 36 6" spacing="6" height="600" rectAlignment="LowerCenter">
            <TableLayout class="sheet-table"> 
                
                <Row preferredHeight="24" dontUseTableRowBackground="true">
                    <Cell columnSpan="3"><Text font="bold" alignment="UpperCenter">НАВЫКИ</Text></Cell>
                </Row>

                <Row tooltipPosition="Left" tooltip="&lt;size=14&gt;Атлетические действия&lt;/size&gt;&#xA;&#xA;Проверки Силы (Атлетика) покрывают разнообразные&#xA;ситуации, в которых вы лазаете, прыгаете или плаваете.">
                    <Cell><Button color="">O</Button></Cell>
                    <Cell><Text font="regular"><b>Акробатика</b> (Лов)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>
            </TableLayout>
            <VerticalLayout image="frame">
            </VerticalLayout>
        </HorizontalLayout>
    </Panel>
]]