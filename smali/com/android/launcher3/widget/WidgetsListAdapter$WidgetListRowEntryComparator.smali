.class public Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mComparator:Lcom/android/launcher3/util/LabelComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/widget/WidgetListRowEntry;Lcom/android/launcher3/widget/WidgetListRowEntry;)I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    iget-object p1, p1, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 211
    check-cast p1, Lcom/android/launcher3/widget/WidgetListRowEntry;

    check-cast p2, Lcom/android/launcher3/widget/WidgetListRowEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->compare(Lcom/android/launcher3/widget/WidgetListRowEntry;Lcom/android/launcher3/widget/WidgetListRowEntry;)I

    move-result p1

    return p1
.end method
