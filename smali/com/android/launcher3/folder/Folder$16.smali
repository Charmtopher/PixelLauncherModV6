.class Lcom/android/launcher3/folder/Folder$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1411
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    iget v0, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    iget p2, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    :goto_0
    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget p2, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget p2, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    goto :goto_0
.end method
