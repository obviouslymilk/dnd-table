return [[
    <Defaults>
        <Tooltip tooltipPosition="Right" tooltipBorderColor="#ffffff" tooltipTextColor="#ffffff" tooltipBackgroundColor="#000000" />

        <Text color="#09090b" fontSize="14"/>
        <Button font="bold"/>
        <Panel />

        <Button class="sheet-tab" colors="#ffffff|#e4e4e7" image="sheet-btn" iconWidth="25" minHeight="42"  />

        <InputField class="sheet-header-input" color="none" textColor="#fafafa" font="regular" selectionColor="#27272a" />

        <Text class="stat-name" font="bold" offsetXY="0 16" />
        <Text class="stat-mod" font="bold" offsetXY="0 1" fontSize="18"/>
        <Text class="stat-value" font="bold" offsetXY="0 -20" color="#ffffff" />

        <TableLayout
            class="sheet-table"
            image="frame"
            padding="12 12 6 6"
            columnWidths="24 0 36"
            cellBackgroundImage=""
            cellBackgroundColor=""
            rowBackgroundColor=""
            useAlternateRowBackgroundColors="true"
            rowBackgroundColorAlternate="#f5f5f5"
        /> 
    </Defaults>
]]