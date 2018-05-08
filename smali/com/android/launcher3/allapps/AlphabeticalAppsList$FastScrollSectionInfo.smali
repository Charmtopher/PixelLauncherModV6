.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

.field public sectionName:Ljava/lang/String;

.field public touchFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    .line 64
    return-void
.end method
