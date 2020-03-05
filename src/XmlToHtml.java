import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;



public class XmlToHtml {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		Source xml = new StreamSource(new File("files/players.xml"));
		Source xslt = new StreamSource("files/players.xsl");

		convertXMLToHTML(xml, xslt);

	}
	
	public static void convertXMLToHTML(Source xml, Source xslt) {
		StringWriter sw = new StringWriter();

		try {

			FileWriter fw = new FileWriter("files/players.html");
			TransformerFactory tFactory = TransformerFactory.newInstance();
			Transformer trasform = tFactory.newTransformer(xslt);
			trasform.transform(xml, new StreamResult(sw));
			fw.write(sw.toString());
			fw.close();

			System.out
					.println("HTML File generated successfully at Files folder ");

		} catch (IOException | TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}

		
	}

}
