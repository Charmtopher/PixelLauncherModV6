.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appIndex:I

.field public appInfo:Lcom/android/launcher3/AppInfo;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/AppInfo;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method
