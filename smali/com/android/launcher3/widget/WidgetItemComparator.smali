.class public Lcom/android/launcher3/widget/WidgetItemComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mMyUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    .line 32
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 29
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v2, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    iget p1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget p2, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
