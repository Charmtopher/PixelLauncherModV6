.class public Lcom/android/launcher3/widget/WidgetListRowEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

.field public titleSectionName:Ljava/lang/String;

.field public final widgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/PackageItemInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
