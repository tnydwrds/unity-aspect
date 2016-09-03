import RemObjects.Elements.Cirrus

/**
 * Sets the property's underlying field Visibility to Public
 */
@AttributeUsage(AttributeTargets.Property)
public class PublicizeField: System.Attribute, IPropertyImplementationDecorator {

    public func HandleImplementation(_ Services: IServices!, _ aProperty: IPropertyDefinition!, _ aRead: IMethodDefinition!, _ aWrite: IMethodDefinition!) {
        var field = aProperty.GetImplicitField()
        field.Name = "m_\(aProperty.Name)"
        field.Visibility = Visibility.Public
    }

}
