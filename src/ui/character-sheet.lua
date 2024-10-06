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
                        id="${color}_name"
                        placeholderText="ИМЯ ПЕРСОНАЖА"
                        font="bold"
                        fontSize="20"
                        textAlignment="LowerLeft"
                        characterLimit="20"
                        textOffset="20 0 0 0"
                    />
                    <InputField
                        id="${color}_class"
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
                <Text id="${color}_str_mod" class="stat-mod">-1</Text>
                <Text id="${color}_str_v" class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Лов</Text>
                <Text id="${color}_dex_mod" class="stat-mod">-1</Text>
                <Text id="${color}_dex_v" class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Тел</Text>
                <Text id="${color}_con_mod" class="stat-mod">-1</Text>
                <Text id="${color}_con_v" class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Инт</Text>
                <Text id="${color}_int_mod" class="stat-mod">-1</Text>
                <Text id="${color}_int_v" class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Мдр</Text>
                <Text id="${color}_wis_mod" class="stat-mod">-1</Text>
                <Text id="${color}_wis_v" class="stat-value">9</Text>
            </Panel>
            <Panel image="stat-frame">
                <Text class="stat-name">Хар</Text>
                <Text id="${color}_chr_mod" class="stat-mod">-1</Text>
                <Text id="${color}_chr_v" class="stat-value">9</Text>
            </Panel>
        </GridLayout>

        <HorizontalLayout padding="6 6 36 6" spacing="6" height="600" rectAlignment="LowerCenter">
            <TableLayout class="sheet-table"> 
                
                <Row preferredHeight="24" dontUseTableRowBackground="true">
                    <Cell columnSpan="3"><Text font="bold" alignment="UpperCenter">НАВЫКИ</Text></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Акробатика</b> (Лов)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Анализ</b> (Инт)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Атлетика</b> (Сил)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Восприятие</b> (Муд)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Выживание</b> (Муд)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Выступление</b> (Хар)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Запугивание</b> (Хар)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>История</b> (Инт)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Ловкость рук</b> (Лов)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Магия</b> (Инт)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Медицина</b> (Муд)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Обман</b> (Хар)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Природа</b> (Инт)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Проницат-ть</b> (Муд)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Религия</b> (Инт)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Скрытность</b> (Лов)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Убеждение</b> (Хар)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>

                <Row>
                    <Cell><Button color="" icon="noskill-icon"/></Cell>
                    <Cell><Text font="regular" alignment="MiddleLeft"><b>Дрессировка</b> (Муд)</Text></Cell>
                    <Cell><Text font="bold" text="+0"/></Cell>
                </Row>
            </TableLayout>
            <VerticalLayout image="frame">
            </VerticalLayout>
        </HorizontalLayout>
    </Panel>
]]