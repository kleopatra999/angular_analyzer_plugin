// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// This file has been automatically generated.  Please do not edit it manually.
// To regenerate the file, use the script "pkg/analyzer/tool/generate_files".

import 'package:analyzer/src/summary/flat_buffers.dart' as fb;
import 'idl.dart' as idl;
import 'dart:convert' as convert;
import 'package:analyzer/src/summary/api_signature.dart' as api_sig;

class PackageBundleBuilder extends Object
    with _PackageBundleMixin
    implements idl.PackageBundle {
  List<UnlinkedDartSummaryBuilder> _unlinkedDartSummary;

  @override
  List<UnlinkedDartSummaryBuilder> get unlinkedDartSummary =>
      _unlinkedDartSummary ??= <UnlinkedDartSummaryBuilder>[];

  void set unlinkedDartSummary(List<UnlinkedDartSummaryBuilder> value) {
    this._unlinkedDartSummary = value;
  }

  PackageBundleBuilder({List<UnlinkedDartSummaryBuilder> unlinkedDartSummary})
      : _unlinkedDartSummary = unlinkedDartSummary;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _unlinkedDartSummary?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    if (this._unlinkedDartSummary == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._unlinkedDartSummary.length);
      for (var x in this._unlinkedDartSummary) {
        x?.collectApiSignature(signature);
      }
    }
  }

  List<int> toBuffer() {
    fb.Builder fbBuilder = new fb.Builder();
    return fbBuilder.finish(finish(fbBuilder), "APdl");
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_unlinkedDartSummary;
    if (!(_unlinkedDartSummary == null || _unlinkedDartSummary.isEmpty)) {
      offset_unlinkedDartSummary = fbBuilder.writeList(
          _unlinkedDartSummary.map((b) => b.finish(fbBuilder)).toList());
    }
    fbBuilder.startTable();
    if (offset_unlinkedDartSummary != null) {
      fbBuilder.addOffset(0, offset_unlinkedDartSummary);
    }
    return fbBuilder.endTable();
  }
}

idl.PackageBundle readPackageBundle(List<int> buffer) {
  fb.BufferContext rootRef = new fb.BufferContext.fromBytes(buffer);
  return const _PackageBundleReader().read(rootRef, 0);
}

class _PackageBundleReader extends fb.TableReader<_PackageBundleImpl> {
  const _PackageBundleReader();

  @override
  _PackageBundleImpl createObject(fb.BufferContext bc, int offset) =>
      new _PackageBundleImpl(bc, offset);
}

class _PackageBundleImpl extends Object
    with _PackageBundleMixin
    implements idl.PackageBundle {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _PackageBundleImpl(this._bc, this._bcOffset);

  List<idl.UnlinkedDartSummary> _unlinkedDartSummary;

  @override
  List<idl.UnlinkedDartSummary> get unlinkedDartSummary {
    _unlinkedDartSummary ??= const fb.ListReader<idl.UnlinkedDartSummary>(
            const _UnlinkedDartSummaryReader())
        .vTableGet(_bc, _bcOffset, 0, const <idl.UnlinkedDartSummary>[]);
    return _unlinkedDartSummary;
  }
}

abstract class _PackageBundleMixin implements idl.PackageBundle {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (unlinkedDartSummary.isNotEmpty)
      _result["unlinkedDartSummary"] =
          unlinkedDartSummary.map((_value) => _value.toJson()).toList();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "unlinkedDartSummary": unlinkedDartSummary,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class LinkedHtmlSummaryBuilder extends Object
    with _LinkedHtmlSummaryMixin
    implements idl.LinkedHtmlSummary {
  List<SummarizedAnalysisErrorBuilder> _errors;
  List<SummarizedAnalysisErrorFromPathBuilder> _errorsFromPath;

  @override
  List<SummarizedAnalysisErrorBuilder> get errors =>
      _errors ??= <SummarizedAnalysisErrorBuilder>[];

  void set errors(List<SummarizedAnalysisErrorBuilder> value) {
    this._errors = value;
  }

  @override
  List<SummarizedAnalysisErrorFromPathBuilder> get errorsFromPath =>
      _errorsFromPath ??= <SummarizedAnalysisErrorFromPathBuilder>[];

  void set errorsFromPath(List<SummarizedAnalysisErrorFromPathBuilder> value) {
    this._errorsFromPath = value;
  }

  LinkedHtmlSummaryBuilder(
      {List<SummarizedAnalysisErrorBuilder> errors,
      List<SummarizedAnalysisErrorFromPathBuilder> errorsFromPath})
      : _errors = errors,
        _errorsFromPath = errorsFromPath;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _errors?.forEach((b) => b.flushInformative());
    _errorsFromPath?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    if (this._errors == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._errors.length);
      for (var x in this._errors) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._errorsFromPath == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._errorsFromPath.length);
      for (var x in this._errorsFromPath) {
        x?.collectApiSignature(signature);
      }
    }
  }

  List<int> toBuffer() {
    fb.Builder fbBuilder = new fb.Builder();
    return fbBuilder.finish(finish(fbBuilder), "APLH");
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_errors;
    fb.Offset offset_errorsFromPath;
    if (!(_errors == null || _errors.isEmpty)) {
      offset_errors =
          fbBuilder.writeList(_errors.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_errorsFromPath == null || _errorsFromPath.isEmpty)) {
      offset_errorsFromPath = fbBuilder
          .writeList(_errorsFromPath.map((b) => b.finish(fbBuilder)).toList());
    }
    fbBuilder.startTable();
    if (offset_errors != null) {
      fbBuilder.addOffset(0, offset_errors);
    }
    if (offset_errorsFromPath != null) {
      fbBuilder.addOffset(1, offset_errorsFromPath);
    }
    return fbBuilder.endTable();
  }
}

idl.LinkedHtmlSummary readLinkedHtmlSummary(List<int> buffer) {
  fb.BufferContext rootRef = new fb.BufferContext.fromBytes(buffer);
  return const _LinkedHtmlSummaryReader().read(rootRef, 0);
}

class _LinkedHtmlSummaryReader extends fb.TableReader<_LinkedHtmlSummaryImpl> {
  const _LinkedHtmlSummaryReader();

  @override
  _LinkedHtmlSummaryImpl createObject(fb.BufferContext bc, int offset) =>
      new _LinkedHtmlSummaryImpl(bc, offset);
}

class _LinkedHtmlSummaryImpl extends Object
    with _LinkedHtmlSummaryMixin
    implements idl.LinkedHtmlSummary {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _LinkedHtmlSummaryImpl(this._bc, this._bcOffset);

  List<idl.SummarizedAnalysisError> _errors;
  List<idl.SummarizedAnalysisErrorFromPath> _errorsFromPath;

  @override
  List<idl.SummarizedAnalysisError> get errors {
    _errors ??= const fb.ListReader<idl.SummarizedAnalysisError>(
            const _SummarizedAnalysisErrorReader())
        .vTableGet(_bc, _bcOffset, 0, const <idl.SummarizedAnalysisError>[]);
    return _errors;
  }

  @override
  List<idl.SummarizedAnalysisErrorFromPath> get errorsFromPath {
    _errorsFromPath ??=
        const fb.ListReader<idl.SummarizedAnalysisErrorFromPath>(
                const _SummarizedAnalysisErrorFromPathReader())
            .vTableGet(_bc, _bcOffset, 1,
                const <idl.SummarizedAnalysisErrorFromPath>[]);
    return _errorsFromPath;
  }
}

abstract class _LinkedHtmlSummaryMixin implements idl.LinkedHtmlSummary {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (errors.isNotEmpty)
      _result["errors"] = errors.map((_value) => _value.toJson()).toList();
    if (errorsFromPath.isNotEmpty)
      _result["errorsFromPath"] =
          errorsFromPath.map((_value) => _value.toJson()).toList();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "errors": errors,
        "errorsFromPath": errorsFromPath,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class UnlinkedHtmlSummaryBuilder extends Object
    with _UnlinkedHtmlSummaryMixin
    implements idl.UnlinkedHtmlSummary {
  List<SummarizedNgContentBuilder> _ngContents;

  @override
  List<SummarizedNgContentBuilder> get ngContents =>
      _ngContents ??= <SummarizedNgContentBuilder>[];

  void set ngContents(List<SummarizedNgContentBuilder> value) {
    this._ngContents = value;
  }

  UnlinkedHtmlSummaryBuilder({List<SummarizedNgContentBuilder> ngContents})
      : _ngContents = ngContents;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _ngContents?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    if (this._ngContents == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._ngContents.length);
      for (var x in this._ngContents) {
        x?.collectApiSignature(signature);
      }
    }
  }

  List<int> toBuffer() {
    fb.Builder fbBuilder = new fb.Builder();
    return fbBuilder.finish(finish(fbBuilder), "APUH");
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_ngContents;
    if (!(_ngContents == null || _ngContents.isEmpty)) {
      offset_ngContents = fbBuilder
          .writeList(_ngContents.map((b) => b.finish(fbBuilder)).toList());
    }
    fbBuilder.startTable();
    if (offset_ngContents != null) {
      fbBuilder.addOffset(0, offset_ngContents);
    }
    return fbBuilder.endTable();
  }
}

idl.UnlinkedHtmlSummary readUnlinkedHtmlSummary(List<int> buffer) {
  fb.BufferContext rootRef = new fb.BufferContext.fromBytes(buffer);
  return const _UnlinkedHtmlSummaryReader().read(rootRef, 0);
}

class _UnlinkedHtmlSummaryReader
    extends fb.TableReader<_UnlinkedHtmlSummaryImpl> {
  const _UnlinkedHtmlSummaryReader();

  @override
  _UnlinkedHtmlSummaryImpl createObject(fb.BufferContext bc, int offset) =>
      new _UnlinkedHtmlSummaryImpl(bc, offset);
}

class _UnlinkedHtmlSummaryImpl extends Object
    with _UnlinkedHtmlSummaryMixin
    implements idl.UnlinkedHtmlSummary {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _UnlinkedHtmlSummaryImpl(this._bc, this._bcOffset);

  List<idl.SummarizedNgContent> _ngContents;

  @override
  List<idl.SummarizedNgContent> get ngContents {
    _ngContents ??= const fb.ListReader<idl.SummarizedNgContent>(
            const _SummarizedNgContentReader())
        .vTableGet(_bc, _bcOffset, 0, const <idl.SummarizedNgContent>[]);
    return _ngContents;
  }
}

abstract class _UnlinkedHtmlSummaryMixin implements idl.UnlinkedHtmlSummary {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (ngContents.isNotEmpty)
      _result["ngContents"] =
          ngContents.map((_value) => _value.toJson()).toList();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "ngContents": ngContents,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class LinkedDartSummaryBuilder extends Object
    with _LinkedDartSummaryMixin
    implements idl.LinkedDartSummary {
  List<SummarizedAnalysisErrorBuilder> _errors;
  List<String> _referencedHtmlFiles;
  List<String> _referencedDartFiles;
  bool _hasDartTemplates;

  @override
  List<SummarizedAnalysisErrorBuilder> get errors =>
      _errors ??= <SummarizedAnalysisErrorBuilder>[];

  void set errors(List<SummarizedAnalysisErrorBuilder> value) {
    this._errors = value;
  }

  @override
  List<String> get referencedHtmlFiles => _referencedHtmlFiles ??= <String>[];

  void set referencedHtmlFiles(List<String> value) {
    this._referencedHtmlFiles = value;
  }

  @override
  List<String> get referencedDartFiles => _referencedDartFiles ??= <String>[];

  void set referencedDartFiles(List<String> value) {
    this._referencedDartFiles = value;
  }

  @override
  bool get hasDartTemplates => _hasDartTemplates ??= false;

  void set hasDartTemplates(bool value) {
    this._hasDartTemplates = value;
  }

  LinkedDartSummaryBuilder(
      {List<SummarizedAnalysisErrorBuilder> errors,
      List<String> referencedHtmlFiles,
      List<String> referencedDartFiles,
      bool hasDartTemplates})
      : _errors = errors,
        _referencedHtmlFiles = referencedHtmlFiles,
        _referencedDartFiles = referencedDartFiles,
        _hasDartTemplates = hasDartTemplates;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _errors?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    if (this._errors == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._errors.length);
      for (var x in this._errors) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._referencedHtmlFiles == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._referencedHtmlFiles.length);
      for (var x in this._referencedHtmlFiles) {
        signature.addString(x);
      }
    }
    if (this._referencedDartFiles == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._referencedDartFiles.length);
      for (var x in this._referencedDartFiles) {
        signature.addString(x);
      }
    }
    signature.addBool(this._hasDartTemplates == true);
  }

  List<int> toBuffer() {
    fb.Builder fbBuilder = new fb.Builder();
    return fbBuilder.finish(finish(fbBuilder), "APLD");
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_errors;
    fb.Offset offset_referencedHtmlFiles;
    fb.Offset offset_referencedDartFiles;
    if (!(_errors == null || _errors.isEmpty)) {
      offset_errors =
          fbBuilder.writeList(_errors.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_referencedHtmlFiles == null || _referencedHtmlFiles.isEmpty)) {
      offset_referencedHtmlFiles = fbBuilder.writeList(
          _referencedHtmlFiles.map((b) => fbBuilder.writeString(b)).toList());
    }
    if (!(_referencedDartFiles == null || _referencedDartFiles.isEmpty)) {
      offset_referencedDartFiles = fbBuilder.writeList(
          _referencedDartFiles.map((b) => fbBuilder.writeString(b)).toList());
    }
    fbBuilder.startTable();
    if (offset_errors != null) {
      fbBuilder.addOffset(0, offset_errors);
    }
    if (offset_referencedHtmlFiles != null) {
      fbBuilder.addOffset(1, offset_referencedHtmlFiles);
    }
    if (offset_referencedDartFiles != null) {
      fbBuilder.addOffset(2, offset_referencedDartFiles);
    }
    if (_hasDartTemplates == true) {
      fbBuilder.addBool(3, true);
    }
    return fbBuilder.endTable();
  }
}

idl.LinkedDartSummary readLinkedDartSummary(List<int> buffer) {
  fb.BufferContext rootRef = new fb.BufferContext.fromBytes(buffer);
  return const _LinkedDartSummaryReader().read(rootRef, 0);
}

class _LinkedDartSummaryReader extends fb.TableReader<_LinkedDartSummaryImpl> {
  const _LinkedDartSummaryReader();

  @override
  _LinkedDartSummaryImpl createObject(fb.BufferContext bc, int offset) =>
      new _LinkedDartSummaryImpl(bc, offset);
}

class _LinkedDartSummaryImpl extends Object
    with _LinkedDartSummaryMixin
    implements idl.LinkedDartSummary {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _LinkedDartSummaryImpl(this._bc, this._bcOffset);

  List<idl.SummarizedAnalysisError> _errors;
  List<String> _referencedHtmlFiles;
  List<String> _referencedDartFiles;
  bool _hasDartTemplates;

  @override
  List<idl.SummarizedAnalysisError> get errors {
    _errors ??= const fb.ListReader<idl.SummarizedAnalysisError>(
            const _SummarizedAnalysisErrorReader())
        .vTableGet(_bc, _bcOffset, 0, const <idl.SummarizedAnalysisError>[]);
    return _errors;
  }

  @override
  List<String> get referencedHtmlFiles {
    _referencedHtmlFiles ??=
        const fb.ListReader<String>(const fb.StringReader())
            .vTableGet(_bc, _bcOffset, 1, const <String>[]);
    return _referencedHtmlFiles;
  }

  @override
  List<String> get referencedDartFiles {
    _referencedDartFiles ??=
        const fb.ListReader<String>(const fb.StringReader())
            .vTableGet(_bc, _bcOffset, 2, const <String>[]);
    return _referencedDartFiles;
  }

  @override
  bool get hasDartTemplates {
    _hasDartTemplates ??=
        const fb.BoolReader().vTableGet(_bc, _bcOffset, 3, false);
    return _hasDartTemplates;
  }
}

abstract class _LinkedDartSummaryMixin implements idl.LinkedDartSummary {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (errors.isNotEmpty)
      _result["errors"] = errors.map((_value) => _value.toJson()).toList();
    if (referencedHtmlFiles.isNotEmpty)
      _result["referencedHtmlFiles"] = referencedHtmlFiles;
    if (referencedDartFiles.isNotEmpty)
      _result["referencedDartFiles"] = referencedDartFiles;
    if (hasDartTemplates != false)
      _result["hasDartTemplates"] = hasDartTemplates;
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "errors": errors,
        "referencedHtmlFiles": referencedHtmlFiles,
        "referencedDartFiles": referencedDartFiles,
        "hasDartTemplates": hasDartTemplates,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class UnlinkedDartSummaryBuilder extends Object
    with _UnlinkedDartSummaryMixin
    implements idl.UnlinkedDartSummary {
  List<SummarizedDirectiveBuilder> _directiveSummaries;
  List<SummarizedAnalysisErrorBuilder> _errors;

  @override
  List<SummarizedDirectiveBuilder> get directiveSummaries =>
      _directiveSummaries ??= <SummarizedDirectiveBuilder>[];

  void set directiveSummaries(List<SummarizedDirectiveBuilder> value) {
    this._directiveSummaries = value;
  }

  @override
  List<SummarizedAnalysisErrorBuilder> get errors =>
      _errors ??= <SummarizedAnalysisErrorBuilder>[];

  void set errors(List<SummarizedAnalysisErrorBuilder> value) {
    this._errors = value;
  }

  UnlinkedDartSummaryBuilder(
      {List<SummarizedDirectiveBuilder> directiveSummaries,
      List<SummarizedAnalysisErrorBuilder> errors})
      : _directiveSummaries = directiveSummaries,
        _errors = errors;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _directiveSummaries?.forEach((b) => b.flushInformative());
    _errors?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    if (this._directiveSummaries == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._directiveSummaries.length);
      for (var x in this._directiveSummaries) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._errors == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._errors.length);
      for (var x in this._errors) {
        x?.collectApiSignature(signature);
      }
    }
  }

  List<int> toBuffer() {
    fb.Builder fbBuilder = new fb.Builder();
    return fbBuilder.finish(finish(fbBuilder), "APUD");
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_directiveSummaries;
    fb.Offset offset_errors;
    if (!(_directiveSummaries == null || _directiveSummaries.isEmpty)) {
      offset_directiveSummaries = fbBuilder.writeList(
          _directiveSummaries.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_errors == null || _errors.isEmpty)) {
      offset_errors =
          fbBuilder.writeList(_errors.map((b) => b.finish(fbBuilder)).toList());
    }
    fbBuilder.startTable();
    if (offset_directiveSummaries != null) {
      fbBuilder.addOffset(0, offset_directiveSummaries);
    }
    if (offset_errors != null) {
      fbBuilder.addOffset(1, offset_errors);
    }
    return fbBuilder.endTable();
  }
}

idl.UnlinkedDartSummary readUnlinkedDartSummary(List<int> buffer) {
  fb.BufferContext rootRef = new fb.BufferContext.fromBytes(buffer);
  return const _UnlinkedDartSummaryReader().read(rootRef, 0);
}

class _UnlinkedDartSummaryReader
    extends fb.TableReader<_UnlinkedDartSummaryImpl> {
  const _UnlinkedDartSummaryReader();

  @override
  _UnlinkedDartSummaryImpl createObject(fb.BufferContext bc, int offset) =>
      new _UnlinkedDartSummaryImpl(bc, offset);
}

class _UnlinkedDartSummaryImpl extends Object
    with _UnlinkedDartSummaryMixin
    implements idl.UnlinkedDartSummary {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _UnlinkedDartSummaryImpl(this._bc, this._bcOffset);

  List<idl.SummarizedDirective> _directiveSummaries;
  List<idl.SummarizedAnalysisError> _errors;

  @override
  List<idl.SummarizedDirective> get directiveSummaries {
    _directiveSummaries ??= const fb.ListReader<idl.SummarizedDirective>(
            const _SummarizedDirectiveReader())
        .vTableGet(_bc, _bcOffset, 0, const <idl.SummarizedDirective>[]);
    return _directiveSummaries;
  }

  @override
  List<idl.SummarizedAnalysisError> get errors {
    _errors ??= const fb.ListReader<idl.SummarizedAnalysisError>(
            const _SummarizedAnalysisErrorReader())
        .vTableGet(_bc, _bcOffset, 1, const <idl.SummarizedAnalysisError>[]);
    return _errors;
  }
}

abstract class _UnlinkedDartSummaryMixin implements idl.UnlinkedDartSummary {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (directiveSummaries.isNotEmpty)
      _result["directiveSummaries"] =
          directiveSummaries.map((_value) => _value.toJson()).toList();
    if (errors.isNotEmpty)
      _result["errors"] = errors.map((_value) => _value.toJson()).toList();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "directiveSummaries": directiveSummaries,
        "errors": errors,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedDirectiveBuilder extends Object
    with _SummarizedDirectiveMixin
    implements idl.SummarizedDirective {
  bool _isComponent;
  String _selectorStr;
  int _selectorOffset;
  String _decoratedClassName;
  String _exportAs;
  int _exportAsOffset;
  String _templateUrl;
  int _templateUrlOffset;
  int _templateUrlLength;
  String _templateText;
  int _templateOffset;
  List<SummarizedNgContentBuilder> _ngContents;
  List<SummarizedBindableBuilder> _inputs;
  List<SummarizedBindableBuilder> _outputs;
  List<SummarizedDirectiveUseBuilder> _subdirectives;

  @override
  bool get isComponent => _isComponent ??= false;

  void set isComponent(bool value) {
    this._isComponent = value;
  }

  @override
  String get selectorStr => _selectorStr ??= '';

  void set selectorStr(String value) {
    this._selectorStr = value;
  }

  @override
  int get selectorOffset => _selectorOffset ??= 0;

  void set selectorOffset(int value) {
    assert(value == null || value >= 0);
    this._selectorOffset = value;
  }

  @override
  String get decoratedClassName => _decoratedClassName ??= '';

  void set decoratedClassName(String value) {
    this._decoratedClassName = value;
  }

  @override
  String get exportAs => _exportAs ??= '';

  void set exportAs(String value) {
    this._exportAs = value;
  }

  @override
  int get exportAsOffset => _exportAsOffset ??= 0;

  void set exportAsOffset(int value) {
    assert(value == null || value >= 0);
    this._exportAsOffset = value;
  }

  @override
  String get templateUrl => _templateUrl ??= '';

  void set templateUrl(String value) {
    this._templateUrl = value;
  }

  @override
  int get templateUrlOffset => _templateUrlOffset ??= 0;

  void set templateUrlOffset(int value) {
    assert(value == null || value >= 0);
    this._templateUrlOffset = value;
  }

  @override
  int get templateUrlLength => _templateUrlLength ??= 0;

  void set templateUrlLength(int value) {
    assert(value == null || value >= 0);
    this._templateUrlLength = value;
  }

  @override
  String get templateText => _templateText ??= '';

  void set templateText(String value) {
    this._templateText = value;
  }

  @override
  int get templateOffset => _templateOffset ??= 0;

  void set templateOffset(int value) {
    assert(value == null || value >= 0);
    this._templateOffset = value;
  }

  @override
  List<SummarizedNgContentBuilder> get ngContents =>
      _ngContents ??= <SummarizedNgContentBuilder>[];

  void set ngContents(List<SummarizedNgContentBuilder> value) {
    this._ngContents = value;
  }

  @override
  List<SummarizedBindableBuilder> get inputs =>
      _inputs ??= <SummarizedBindableBuilder>[];

  void set inputs(List<SummarizedBindableBuilder> value) {
    this._inputs = value;
  }

  @override
  List<SummarizedBindableBuilder> get outputs =>
      _outputs ??= <SummarizedBindableBuilder>[];

  void set outputs(List<SummarizedBindableBuilder> value) {
    this._outputs = value;
  }

  @override
  List<SummarizedDirectiveUseBuilder> get subdirectives =>
      _subdirectives ??= <SummarizedDirectiveUseBuilder>[];

  void set subdirectives(List<SummarizedDirectiveUseBuilder> value) {
    this._subdirectives = value;
  }

  SummarizedDirectiveBuilder(
      {bool isComponent,
      String selectorStr,
      int selectorOffset,
      String decoratedClassName,
      String exportAs,
      int exportAsOffset,
      String templateUrl,
      int templateUrlOffset,
      int templateUrlLength,
      String templateText,
      int templateOffset,
      List<SummarizedNgContentBuilder> ngContents,
      List<SummarizedBindableBuilder> inputs,
      List<SummarizedBindableBuilder> outputs,
      List<SummarizedDirectiveUseBuilder> subdirectives})
      : _isComponent = isComponent,
        _selectorStr = selectorStr,
        _selectorOffset = selectorOffset,
        _decoratedClassName = decoratedClassName,
        _exportAs = exportAs,
        _exportAsOffset = exportAsOffset,
        _templateUrl = templateUrl,
        _templateUrlOffset = templateUrlOffset,
        _templateUrlLength = templateUrlLength,
        _templateText = templateText,
        _templateOffset = templateOffset,
        _ngContents = ngContents,
        _inputs = inputs,
        _outputs = outputs,
        _subdirectives = subdirectives;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _ngContents?.forEach((b) => b.flushInformative());
    _inputs?.forEach((b) => b.flushInformative());
    _outputs?.forEach((b) => b.flushInformative());
    _subdirectives?.forEach((b) => b.flushInformative());
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addBool(this._isComponent == true);
    signature.addString(this._selectorStr ?? '');
    signature.addInt(this._selectorOffset ?? 0);
    signature.addString(this._decoratedClassName ?? '');
    signature.addString(this._exportAs ?? '');
    signature.addInt(this._exportAsOffset ?? 0);
    signature.addString(this._templateUrl ?? '');
    signature.addInt(this._templateUrlOffset ?? 0);
    signature.addInt(this._templateUrlLength ?? 0);
    signature.addString(this._templateText ?? '');
    signature.addInt(this._templateOffset ?? 0);
    if (this._ngContents == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._ngContents.length);
      for (var x in this._ngContents) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._inputs == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._inputs.length);
      for (var x in this._inputs) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._outputs == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._outputs.length);
      for (var x in this._outputs) {
        x?.collectApiSignature(signature);
      }
    }
    if (this._subdirectives == null) {
      signature.addInt(0);
    } else {
      signature.addInt(this._subdirectives.length);
      for (var x in this._subdirectives) {
        x?.collectApiSignature(signature);
      }
    }
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_selectorStr;
    fb.Offset offset_decoratedClassName;
    fb.Offset offset_exportAs;
    fb.Offset offset_templateUrl;
    fb.Offset offset_templateText;
    fb.Offset offset_ngContents;
    fb.Offset offset_inputs;
    fb.Offset offset_outputs;
    fb.Offset offset_subdirectives;
    if (_selectorStr != null) {
      offset_selectorStr = fbBuilder.writeString(_selectorStr);
    }
    if (_decoratedClassName != null) {
      offset_decoratedClassName = fbBuilder.writeString(_decoratedClassName);
    }
    if (_exportAs != null) {
      offset_exportAs = fbBuilder.writeString(_exportAs);
    }
    if (_templateUrl != null) {
      offset_templateUrl = fbBuilder.writeString(_templateUrl);
    }
    if (_templateText != null) {
      offset_templateText = fbBuilder.writeString(_templateText);
    }
    if (!(_ngContents == null || _ngContents.isEmpty)) {
      offset_ngContents = fbBuilder
          .writeList(_ngContents.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_inputs == null || _inputs.isEmpty)) {
      offset_inputs =
          fbBuilder.writeList(_inputs.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_outputs == null || _outputs.isEmpty)) {
      offset_outputs = fbBuilder
          .writeList(_outputs.map((b) => b.finish(fbBuilder)).toList());
    }
    if (!(_subdirectives == null || _subdirectives.isEmpty)) {
      offset_subdirectives = fbBuilder
          .writeList(_subdirectives.map((b) => b.finish(fbBuilder)).toList());
    }
    fbBuilder.startTable();
    if (_isComponent == true) {
      fbBuilder.addBool(0, true);
    }
    if (offset_selectorStr != null) {
      fbBuilder.addOffset(1, offset_selectorStr);
    }
    if (_selectorOffset != null && _selectorOffset != 0) {
      fbBuilder.addUint32(2, _selectorOffset);
    }
    if (offset_decoratedClassName != null) {
      fbBuilder.addOffset(3, offset_decoratedClassName);
    }
    if (offset_exportAs != null) {
      fbBuilder.addOffset(4, offset_exportAs);
    }
    if (_exportAsOffset != null && _exportAsOffset != 0) {
      fbBuilder.addUint32(5, _exportAsOffset);
    }
    if (offset_templateUrl != null) {
      fbBuilder.addOffset(6, offset_templateUrl);
    }
    if (_templateUrlOffset != null && _templateUrlOffset != 0) {
      fbBuilder.addUint32(7, _templateUrlOffset);
    }
    if (_templateUrlLength != null && _templateUrlLength != 0) {
      fbBuilder.addUint32(8, _templateUrlLength);
    }
    if (offset_templateText != null) {
      fbBuilder.addOffset(9, offset_templateText);
    }
    if (_templateOffset != null && _templateOffset != 0) {
      fbBuilder.addUint32(10, _templateOffset);
    }
    if (offset_ngContents != null) {
      fbBuilder.addOffset(11, offset_ngContents);
    }
    if (offset_inputs != null) {
      fbBuilder.addOffset(12, offset_inputs);
    }
    if (offset_outputs != null) {
      fbBuilder.addOffset(13, offset_outputs);
    }
    if (offset_subdirectives != null) {
      fbBuilder.addOffset(14, offset_subdirectives);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedDirectiveReader
    extends fb.TableReader<_SummarizedDirectiveImpl> {
  const _SummarizedDirectiveReader();

  @override
  _SummarizedDirectiveImpl createObject(fb.BufferContext bc, int offset) =>
      new _SummarizedDirectiveImpl(bc, offset);
}

class _SummarizedDirectiveImpl extends Object
    with _SummarizedDirectiveMixin
    implements idl.SummarizedDirective {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedDirectiveImpl(this._bc, this._bcOffset);

  bool _isComponent;
  String _selectorStr;
  int _selectorOffset;
  String _decoratedClassName;
  String _exportAs;
  int _exportAsOffset;
  String _templateUrl;
  int _templateUrlOffset;
  int _templateUrlLength;
  String _templateText;
  int _templateOffset;
  List<idl.SummarizedNgContent> _ngContents;
  List<idl.SummarizedBindable> _inputs;
  List<idl.SummarizedBindable> _outputs;
  List<idl.SummarizedDirectiveUse> _subdirectives;

  @override
  bool get isComponent {
    _isComponent ??= const fb.BoolReader().vTableGet(_bc, _bcOffset, 0, false);
    return _isComponent;
  }

  @override
  String get selectorStr {
    _selectorStr ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 1, '');
    return _selectorStr;
  }

  @override
  int get selectorOffset {
    _selectorOffset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 2, 0);
    return _selectorOffset;
  }

  @override
  String get decoratedClassName {
    _decoratedClassName ??=
        const fb.StringReader().vTableGet(_bc, _bcOffset, 3, '');
    return _decoratedClassName;
  }

  @override
  String get exportAs {
    _exportAs ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 4, '');
    return _exportAs;
  }

  @override
  int get exportAsOffset {
    _exportAsOffset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 5, 0);
    return _exportAsOffset;
  }

  @override
  String get templateUrl {
    _templateUrl ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 6, '');
    return _templateUrl;
  }

  @override
  int get templateUrlOffset {
    _templateUrlOffset ??=
        const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 7, 0);
    return _templateUrlOffset;
  }

  @override
  int get templateUrlLength {
    _templateUrlLength ??=
        const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 8, 0);
    return _templateUrlLength;
  }

  @override
  String get templateText {
    _templateText ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 9, '');
    return _templateText;
  }

  @override
  int get templateOffset {
    _templateOffset ??=
        const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 10, 0);
    return _templateOffset;
  }

  @override
  List<idl.SummarizedNgContent> get ngContents {
    _ngContents ??= const fb.ListReader<idl.SummarizedNgContent>(
            const _SummarizedNgContentReader())
        .vTableGet(_bc, _bcOffset, 11, const <idl.SummarizedNgContent>[]);
    return _ngContents;
  }

  @override
  List<idl.SummarizedBindable> get inputs {
    _inputs ??= const fb.ListReader<idl.SummarizedBindable>(
            const _SummarizedBindableReader())
        .vTableGet(_bc, _bcOffset, 12, const <idl.SummarizedBindable>[]);
    return _inputs;
  }

  @override
  List<idl.SummarizedBindable> get outputs {
    _outputs ??= const fb.ListReader<idl.SummarizedBindable>(
            const _SummarizedBindableReader())
        .vTableGet(_bc, _bcOffset, 13, const <idl.SummarizedBindable>[]);
    return _outputs;
  }

  @override
  List<idl.SummarizedDirectiveUse> get subdirectives {
    _subdirectives ??= const fb.ListReader<idl.SummarizedDirectiveUse>(
            const _SummarizedDirectiveUseReader())
        .vTableGet(_bc, _bcOffset, 14, const <idl.SummarizedDirectiveUse>[]);
    return _subdirectives;
  }
}

abstract class _SummarizedDirectiveMixin implements idl.SummarizedDirective {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (isComponent != false) _result["isComponent"] = isComponent;
    if (selectorStr != '') _result["selectorStr"] = selectorStr;
    if (selectorOffset != 0) _result["selectorOffset"] = selectorOffset;
    if (decoratedClassName != '')
      _result["decoratedClassName"] = decoratedClassName;
    if (exportAs != '') _result["exportAs"] = exportAs;
    if (exportAsOffset != 0) _result["exportAsOffset"] = exportAsOffset;
    if (templateUrl != '') _result["templateUrl"] = templateUrl;
    if (templateUrlOffset != 0)
      _result["templateUrlOffset"] = templateUrlOffset;
    if (templateUrlLength != 0)
      _result["templateUrlLength"] = templateUrlLength;
    if (templateText != '') _result["templateText"] = templateText;
    if (templateOffset != 0) _result["templateOffset"] = templateOffset;
    if (ngContents.isNotEmpty)
      _result["ngContents"] =
          ngContents.map((_value) => _value.toJson()).toList();
    if (inputs.isNotEmpty)
      _result["inputs"] = inputs.map((_value) => _value.toJson()).toList();
    if (outputs.isNotEmpty)
      _result["outputs"] = outputs.map((_value) => _value.toJson()).toList();
    if (subdirectives.isNotEmpty)
      _result["subdirectives"] =
          subdirectives.map((_value) => _value.toJson()).toList();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "isComponent": isComponent,
        "selectorStr": selectorStr,
        "selectorOffset": selectorOffset,
        "decoratedClassName": decoratedClassName,
        "exportAs": exportAs,
        "exportAsOffset": exportAsOffset,
        "templateUrl": templateUrl,
        "templateUrlOffset": templateUrlOffset,
        "templateUrlLength": templateUrlLength,
        "templateText": templateText,
        "templateOffset": templateOffset,
        "ngContents": ngContents,
        "inputs": inputs,
        "outputs": outputs,
        "subdirectives": subdirectives,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedAnalysisErrorBuilder extends Object
    with _SummarizedAnalysisErrorMixin
    implements idl.SummarizedAnalysisError {
  String _errorCode;
  String _message;
  String _correction;
  int _offset;
  int _length;

  @override
  String get errorCode => _errorCode ??= '';

  void set errorCode(String value) {
    this._errorCode = value;
  }

  @override
  String get message => _message ??= '';

  void set message(String value) {
    this._message = value;
  }

  @override
  String get correction => _correction ??= '';

  void set correction(String value) {
    this._correction = value;
  }

  @override
  int get offset => _offset ??= 0;

  void set offset(int value) {
    assert(value == null || value >= 0);
    this._offset = value;
  }

  @override
  int get length => _length ??= 0;

  void set length(int value) {
    assert(value == null || value >= 0);
    this._length = value;
  }

  SummarizedAnalysisErrorBuilder(
      {String errorCode,
      String message,
      String correction,
      int offset,
      int length})
      : _errorCode = errorCode,
        _message = message,
        _correction = correction,
        _offset = offset,
        _length = length;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {}

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addString(this._errorCode ?? '');
    signature.addString(this._message ?? '');
    signature.addString(this._correction ?? '');
    signature.addInt(this._offset ?? 0);
    signature.addInt(this._length ?? 0);
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_errorCode;
    fb.Offset offset_message;
    fb.Offset offset_correction;
    if (_errorCode != null) {
      offset_errorCode = fbBuilder.writeString(_errorCode);
    }
    if (_message != null) {
      offset_message = fbBuilder.writeString(_message);
    }
    if (_correction != null) {
      offset_correction = fbBuilder.writeString(_correction);
    }
    fbBuilder.startTable();
    if (offset_errorCode != null) {
      fbBuilder.addOffset(0, offset_errorCode);
    }
    if (offset_message != null) {
      fbBuilder.addOffset(1, offset_message);
    }
    if (offset_correction != null) {
      fbBuilder.addOffset(2, offset_correction);
    }
    if (_offset != null && _offset != 0) {
      fbBuilder.addUint32(3, _offset);
    }
    if (_length != null && _length != 0) {
      fbBuilder.addUint32(4, _length);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedAnalysisErrorReader
    extends fb.TableReader<_SummarizedAnalysisErrorImpl> {
  const _SummarizedAnalysisErrorReader();

  @override
  _SummarizedAnalysisErrorImpl createObject(fb.BufferContext bc, int offset) =>
      new _SummarizedAnalysisErrorImpl(bc, offset);
}

class _SummarizedAnalysisErrorImpl extends Object
    with _SummarizedAnalysisErrorMixin
    implements idl.SummarizedAnalysisError {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedAnalysisErrorImpl(this._bc, this._bcOffset);

  String _errorCode;
  String _message;
  String _correction;
  int _offset;
  int _length;

  @override
  String get errorCode {
    _errorCode ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 0, '');
    return _errorCode;
  }

  @override
  String get message {
    _message ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 1, '');
    return _message;
  }

  @override
  String get correction {
    _correction ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 2, '');
    return _correction;
  }

  @override
  int get offset {
    _offset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 3, 0);
    return _offset;
  }

  @override
  int get length {
    _length ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 4, 0);
    return _length;
  }
}

abstract class _SummarizedAnalysisErrorMixin
    implements idl.SummarizedAnalysisError {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (errorCode != '') _result["errorCode"] = errorCode;
    if (message != '') _result["message"] = message;
    if (correction != '') _result["correction"] = correction;
    if (offset != 0) _result["offset"] = offset;
    if (length != 0) _result["length"] = length;
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "errorCode": errorCode,
        "message": message,
        "correction": correction,
        "offset": offset,
        "length": length,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedAnalysisErrorFromPathBuilder extends Object
    with _SummarizedAnalysisErrorFromPathMixin
    implements idl.SummarizedAnalysisErrorFromPath {
  String _path;
  SummarizedAnalysisErrorBuilder _originalError;

  @override
  String get path => _path ??= '';

  void set path(String value) {
    this._path = value;
  }

  @override
  SummarizedAnalysisErrorBuilder get originalError => _originalError;

  void set originalError(SummarizedAnalysisErrorBuilder value) {
    this._originalError = value;
  }

  SummarizedAnalysisErrorFromPathBuilder(
      {String path, SummarizedAnalysisErrorBuilder originalError})
      : _path = path,
        _originalError = originalError;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {
    _originalError?.flushInformative();
  }

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addString(this._path ?? '');
    signature.addBool(this._originalError != null);
    this._originalError?.collectApiSignature(signature);
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_path;
    fb.Offset offset_originalError;
    if (_path != null) {
      offset_path = fbBuilder.writeString(_path);
    }
    if (_originalError != null) {
      offset_originalError = _originalError.finish(fbBuilder);
    }
    fbBuilder.startTable();
    if (offset_path != null) {
      fbBuilder.addOffset(0, offset_path);
    }
    if (offset_originalError != null) {
      fbBuilder.addOffset(1, offset_originalError);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedAnalysisErrorFromPathReader
    extends fb.TableReader<_SummarizedAnalysisErrorFromPathImpl> {
  const _SummarizedAnalysisErrorFromPathReader();

  @override
  _SummarizedAnalysisErrorFromPathImpl createObject(
          fb.BufferContext bc, int offset) =>
      new _SummarizedAnalysisErrorFromPathImpl(bc, offset);
}

class _SummarizedAnalysisErrorFromPathImpl extends Object
    with _SummarizedAnalysisErrorFromPathMixin
    implements idl.SummarizedAnalysisErrorFromPath {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedAnalysisErrorFromPathImpl(this._bc, this._bcOffset);

  String _path;
  idl.SummarizedAnalysisError _originalError;

  @override
  String get path {
    _path ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 0, '');
    return _path;
  }

  @override
  idl.SummarizedAnalysisError get originalError {
    _originalError ??= const _SummarizedAnalysisErrorReader()
        .vTableGet(_bc, _bcOffset, 1, null);
    return _originalError;
  }
}

abstract class _SummarizedAnalysisErrorFromPathMixin
    implements idl.SummarizedAnalysisErrorFromPath {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (path != '') _result["path"] = path;
    if (originalError != null)
      _result["originalError"] = originalError.toJson();
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "path": path,
        "originalError": originalError,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedBindableBuilder extends Object
    with _SummarizedBindableMixin
    implements idl.SummarizedBindable {
  String _name;
  int _nameOffset;
  String _propName;
  int _propNameOffset;

  @override
  String get name => _name ??= '';

  void set name(String value) {
    this._name = value;
  }

  @override
  int get nameOffset => _nameOffset ??= 0;

  void set nameOffset(int value) {
    assert(value == null || value >= 0);
    this._nameOffset = value;
  }

  @override
  String get propName => _propName ??= '';

  void set propName(String value) {
    this._propName = value;
  }

  @override
  int get propNameOffset => _propNameOffset ??= 0;

  void set propNameOffset(int value) {
    assert(value == null || value >= 0);
    this._propNameOffset = value;
  }

  SummarizedBindableBuilder(
      {String name, int nameOffset, String propName, int propNameOffset})
      : _name = name,
        _nameOffset = nameOffset,
        _propName = propName,
        _propNameOffset = propNameOffset;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {}

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addString(this._name ?? '');
    signature.addInt(this._nameOffset ?? 0);
    signature.addString(this._propName ?? '');
    signature.addInt(this._propNameOffset ?? 0);
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_name;
    fb.Offset offset_propName;
    if (_name != null) {
      offset_name = fbBuilder.writeString(_name);
    }
    if (_propName != null) {
      offset_propName = fbBuilder.writeString(_propName);
    }
    fbBuilder.startTable();
    if (offset_name != null) {
      fbBuilder.addOffset(0, offset_name);
    }
    if (_nameOffset != null && _nameOffset != 0) {
      fbBuilder.addUint32(1, _nameOffset);
    }
    if (offset_propName != null) {
      fbBuilder.addOffset(2, offset_propName);
    }
    if (_propNameOffset != null && _propNameOffset != 0) {
      fbBuilder.addUint32(3, _propNameOffset);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedBindableReader
    extends fb.TableReader<_SummarizedBindableImpl> {
  const _SummarizedBindableReader();

  @override
  _SummarizedBindableImpl createObject(fb.BufferContext bc, int offset) =>
      new _SummarizedBindableImpl(bc, offset);
}

class _SummarizedBindableImpl extends Object
    with _SummarizedBindableMixin
    implements idl.SummarizedBindable {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedBindableImpl(this._bc, this._bcOffset);

  String _name;
  int _nameOffset;
  String _propName;
  int _propNameOffset;

  @override
  String get name {
    _name ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 0, '');
    return _name;
  }

  @override
  int get nameOffset {
    _nameOffset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 1, 0);
    return _nameOffset;
  }

  @override
  String get propName {
    _propName ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 2, '');
    return _propName;
  }

  @override
  int get propNameOffset {
    _propNameOffset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 3, 0);
    return _propNameOffset;
  }
}

abstract class _SummarizedBindableMixin implements idl.SummarizedBindable {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (name != '') _result["name"] = name;
    if (nameOffset != 0) _result["nameOffset"] = nameOffset;
    if (propName != '') _result["propName"] = propName;
    if (propNameOffset != 0) _result["propNameOffset"] = propNameOffset;
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "name": name,
        "nameOffset": nameOffset,
        "propName": propName,
        "propNameOffset": propNameOffset,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedDirectiveUseBuilder extends Object
    with _SummarizedDirectiveUseMixin
    implements idl.SummarizedDirectiveUse {
  String _name;
  String _prefix;
  int _offset;
  int _length;

  @override
  String get name => _name ??= '';

  void set name(String value) {
    this._name = value;
  }

  @override
  String get prefix => _prefix ??= '';

  void set prefix(String value) {
    this._prefix = value;
  }

  @override
  int get offset => _offset ??= 0;

  void set offset(int value) {
    assert(value == null || value >= 0);
    this._offset = value;
  }

  @override
  int get length => _length ??= 0;

  void set length(int value) {
    assert(value == null || value >= 0);
    this._length = value;
  }

  SummarizedDirectiveUseBuilder(
      {String name, String prefix, int offset, int length})
      : _name = name,
        _prefix = prefix,
        _offset = offset,
        _length = length;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {}

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addString(this._name ?? '');
    signature.addString(this._prefix ?? '');
    signature.addInt(this._offset ?? 0);
    signature.addInt(this._length ?? 0);
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_name;
    fb.Offset offset_prefix;
    if (_name != null) {
      offset_name = fbBuilder.writeString(_name);
    }
    if (_prefix != null) {
      offset_prefix = fbBuilder.writeString(_prefix);
    }
    fbBuilder.startTable();
    if (offset_name != null) {
      fbBuilder.addOffset(0, offset_name);
    }
    if (offset_prefix != null) {
      fbBuilder.addOffset(1, offset_prefix);
    }
    if (_offset != null && _offset != 0) {
      fbBuilder.addUint32(2, _offset);
    }
    if (_length != null && _length != 0) {
      fbBuilder.addUint32(3, _length);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedDirectiveUseReader
    extends fb.TableReader<_SummarizedDirectiveUseImpl> {
  const _SummarizedDirectiveUseReader();

  @override
  _SummarizedDirectiveUseImpl createObject(fb.BufferContext bc, int offset) =>
      new _SummarizedDirectiveUseImpl(bc, offset);
}

class _SummarizedDirectiveUseImpl extends Object
    with _SummarizedDirectiveUseMixin
    implements idl.SummarizedDirectiveUse {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedDirectiveUseImpl(this._bc, this._bcOffset);

  String _name;
  String _prefix;
  int _offset;
  int _length;

  @override
  String get name {
    _name ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 0, '');
    return _name;
  }

  @override
  String get prefix {
    _prefix ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 1, '');
    return _prefix;
  }

  @override
  int get offset {
    _offset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 2, 0);
    return _offset;
  }

  @override
  int get length {
    _length ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 3, 0);
    return _length;
  }
}

abstract class _SummarizedDirectiveUseMixin
    implements idl.SummarizedDirectiveUse {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (name != '') _result["name"] = name;
    if (prefix != '') _result["prefix"] = prefix;
    if (offset != 0) _result["offset"] = offset;
    if (length != 0) _result["length"] = length;
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "name": name,
        "prefix": prefix,
        "offset": offset,
        "length": length,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}

class SummarizedNgContentBuilder extends Object
    with _SummarizedNgContentMixin
    implements idl.SummarizedNgContent {
  int _offset;
  int _length;
  String _selectorStr;
  int _selectorOffset;

  @override
  int get offset => _offset ??= 0;

  void set offset(int value) {
    assert(value == null || value >= 0);
    this._offset = value;
  }

  @override
  int get length => _length ??= 0;

  void set length(int value) {
    assert(value == null || value >= 0);
    this._length = value;
  }

  @override
  String get selectorStr => _selectorStr ??= '';

  void set selectorStr(String value) {
    this._selectorStr = value;
  }

  @override
  int get selectorOffset => _selectorOffset ??= 0;

  void set selectorOffset(int value) {
    assert(value == null || value >= 0);
    this._selectorOffset = value;
  }

  SummarizedNgContentBuilder(
      {int offset, int length, String selectorStr, int selectorOffset})
      : _offset = offset,
        _length = length,
        _selectorStr = selectorStr,
        _selectorOffset = selectorOffset;

  /**
   * Flush [informative] data recursively.
   */
  void flushInformative() {}

  /**
   * Accumulate non-[informative] data into [signature].
   */
  void collectApiSignature(api_sig.ApiSignature signature) {
    signature.addInt(this._offset ?? 0);
    signature.addInt(this._length ?? 0);
    signature.addString(this._selectorStr ?? '');
    signature.addInt(this._selectorOffset ?? 0);
  }

  fb.Offset finish(fb.Builder fbBuilder) {
    fb.Offset offset_selectorStr;
    if (_selectorStr != null) {
      offset_selectorStr = fbBuilder.writeString(_selectorStr);
    }
    fbBuilder.startTable();
    if (_offset != null && _offset != 0) {
      fbBuilder.addUint32(0, _offset);
    }
    if (_length != null && _length != 0) {
      fbBuilder.addUint32(1, _length);
    }
    if (offset_selectorStr != null) {
      fbBuilder.addOffset(2, offset_selectorStr);
    }
    if (_selectorOffset != null && _selectorOffset != 0) {
      fbBuilder.addUint32(3, _selectorOffset);
    }
    return fbBuilder.endTable();
  }
}

class _SummarizedNgContentReader
    extends fb.TableReader<_SummarizedNgContentImpl> {
  const _SummarizedNgContentReader();

  @override
  _SummarizedNgContentImpl createObject(fb.BufferContext bc, int offset) =>
      new _SummarizedNgContentImpl(bc, offset);
}

class _SummarizedNgContentImpl extends Object
    with _SummarizedNgContentMixin
    implements idl.SummarizedNgContent {
  final fb.BufferContext _bc;
  final int _bcOffset;

  _SummarizedNgContentImpl(this._bc, this._bcOffset);

  int _offset;
  int _length;
  String _selectorStr;
  int _selectorOffset;

  @override
  int get offset {
    _offset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 0, 0);
    return _offset;
  }

  @override
  int get length {
    _length ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 1, 0);
    return _length;
  }

  @override
  String get selectorStr {
    _selectorStr ??= const fb.StringReader().vTableGet(_bc, _bcOffset, 2, '');
    return _selectorStr;
  }

  @override
  int get selectorOffset {
    _selectorOffset ??= const fb.Uint32Reader().vTableGet(_bc, _bcOffset, 3, 0);
    return _selectorOffset;
  }
}

abstract class _SummarizedNgContentMixin implements idl.SummarizedNgContent {
  @override
  Map<String, Object> toJson() {
    Map<String, Object> _result = <String, Object>{};
    if (offset != 0) _result["offset"] = offset;
    if (length != 0) _result["length"] = length;
    if (selectorStr != '') _result["selectorStr"] = selectorStr;
    if (selectorOffset != 0) _result["selectorOffset"] = selectorOffset;
    return _result;
  }

  @override
  Map<String, Object> toMap() => {
        "offset": offset,
        "length": length,
        "selectorStr": selectorStr,
        "selectorOffset": selectorOffset,
      };

  @override
  String toString() => convert.JSON.encode(toJson());
}
