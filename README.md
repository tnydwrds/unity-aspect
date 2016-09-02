# unity-aspect
A RemObjects Elements compiler [Aspect](https://docs.elementscompiler.com/Concepts/Aspects/Cirrus/)
to assist with using Swift in Unity.

It exposes a `PublicizeField` attribute that will publicize a Swift class
property's underlying field for the Unity editor. This is necessary because
Swift properties translate to properties, but Unity editor seems to work with
serialized *fields*. In order to edit a property in the Unity editor, you will
need to add the attribute to it.
