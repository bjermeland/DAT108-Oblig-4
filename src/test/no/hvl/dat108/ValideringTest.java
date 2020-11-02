package test.no.hvl.dat108;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.Test;

import no.hvl.dat108.Utils.Validering;

public class ValideringTest {
		
	@Test
	public void erGyldigTest() {
		Validering val = new Validering("Markus", "Nyheim-Bjermeland", "94132905", "passpass", "passpass", "mann");
		assertTrue(val.erFornavnGyldig());
		assertTrue(val.erEtternavnGyldig());
		assertTrue(val.erMobilGyldig());
		assertTrue(val.erPassordGyldig());
		assertTrue(val.erKjonnGyldig());
	}
	
	@Test
	public void erUgyldigTest() {
		Validering val = new Validering("M", "Nyheim Bjermeland", "941329052", "pass2", "pass", null);
		assertFalse(val.erFornavnGyldig());
		assertFalse(val.erEtternavnGyldig());
		assertFalse(val.erMobilGyldig());
		assertFalse(val.erPassordGyldig());
		assertFalse(val.erKjonnGyldig());
	}
	
}
