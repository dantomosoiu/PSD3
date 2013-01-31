package uk.ac.glasgow.clui;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Used to denote the description of a command that is printed on the command
 * line after the command label, when the command is invoked.
 * 
 * @author tws
 * 
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface CommandDescription {
	String value();
}
