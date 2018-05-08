.class Lcom/android/launcher3/model/LoaderResults$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$screenCellCount:I

.field final synthetic val$screenCols:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;II)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$7;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput p2, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCellCount:I

    iput p3, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCols:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 263
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v2, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCellCount:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCols:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget p1, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCellCount:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v4, p0, Lcom/android/launcher3/model/LoaderResults$7;->val$screenCols:I

    mul-int/2addr p1, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result p1

    return p1

    :pswitch_1
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result p1

    return p1

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
